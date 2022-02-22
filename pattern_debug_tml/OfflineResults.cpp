#include "testmethod.hpp"

//for test method API interfaces
#include "mapi.hpp"
using namespace std;

/**
 * Test method class.
 *
 * For each testsuite using this test method, one object of this
 * class is created.
 */
class ore: public testmethod::TestMethod {

protected:

	int enable;

	virtual void initialize()
	{

	}

	virtual void run()
	{

		OfflineResultEmulationConfig& oreConfig = OfflineResultEmulationConfig::instance();

		int isOffline;

		ON_FIRST_INVOCATION_BEGIN();
		GET_SYSTEM_FLAG("offline",&isOffline);

		if(isOffline) {
			oreConfig.load("./waveform/ore.xml");
			oreConfig.enable();
		}
		else {
			oreConfig.disable();
			oreConfig.unload();
		}


		ON_FIRST_INVOCATION_END();

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
REGISTER_TESTMETHOD("OfflineResults", ore);
