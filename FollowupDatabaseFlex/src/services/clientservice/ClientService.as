/**
 * This is a generated sub-class of _ClientService.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package services.clientservice
{
	import mx.core.FlexGlobals;

public class ClientService extends _Super_ClientService
{
	protected var global:sbirtfollowup = FlexGlobals.topLevelApplication as sbirtfollowup;
	
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
		//Replace this address with the actual location of where you will put gateway.php
		/*if(global.DEBUG_MODE == 0)
			serviceControl.endpoint = "https://www.drugs.indiana.edu/SBIRT/FollowupDatabase/gateway.php";
		else if(global.DEBUG_MODE == 1)
			serviceControl.endpoint = "https://www.drugs.indiana.edu/SBIRT/FollowupDatabaseTest/gateway.php";*/
		if(global.DEBUG_MODE == 0)
			serviceControl.endpoint = global.ENDPOINT_RELEASE;
		else if(global.DEBUG_MODE == 1)
			serviceControl.endpoint = global.ENDPOINT_DEBUG;
		serviceControl.requestTimeout = 5;
    }
               
}

}
