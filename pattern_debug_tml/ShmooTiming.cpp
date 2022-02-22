#include "testmethod.hpp"

//for test method API interfaces
#include "mapi.hpp"
using namespace std;
#include "tpi_c.h"

/**
 * Test method class.
 *
 * For each testsuite using this test method, one object of this
 * class is created.
 */
class ShmooTiming: public testmethod::TestMethod {

protected:
  /**
   *Initialize the parameter interface to the testflow.
   *This method is called just once after a testsuite is created.
   */
	double strobe_pos;
	int status;
	virtual void initialize()
  {

	  addParameter("strobe", "double", &strobe_pos);
  }


  virtual void run()
  {


	  double str_spec = Primary.getTimingSpec().getSpecValue("Strobe");
	  string cmd = "../../pattern/93kvt/do.sh";

	  status = system(cmd.c_str());
	  status = status >> 8;


	  LIMIT lim(TM::GE, 0, TM::LE, 0);
	  LIMIT strlim(TM::GE, -300, TM::LE, 300);

	  TEST("", "Strobe",  strlim, str_spec, TM::CONTINUE);
	  TEST("", "FAIL_CYC", lim, status, TM::CONTINUE);


  }

  /**
   *This function will be invoked once the specified parameter's value is changed.
   *@param parameterIdentifier
   */
  virtual void postParameterChange(const string& parameterIdentifier)
  {
    //Add your code
    //Note: Test Method API should not be used in this method!
    return;
  }


  /**
   *This function will be invoked once the Select Test Method Dialog is opened.
   */
  virtual const string getComment() const 
  {
    string comment = " please add your comment for this method.";
    return comment;
  }
};
REGISTER_TESTMETHOD("ShmooTiming", ShmooTiming);
