<%@ Application Language="AVR" %>

<%@ Import Namespace="System.Web.Routing" %> 
<%@ Import Namespace="ASNA.JsonRestRouting" %> 

<script runat="server">

	BegSr Application_Start
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs on application startup

        RegisterRoutes(RouteTable.Routes)   
	EndSr

	BegSr Application_End
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		//  Code that runs on application shutdown

	EndSr
        
	BegSr Application_Error
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs when an unhandled error occurs

	EndSr

	BegSr Session_Start
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs when a new session is started

	EndSr

	BegSr Session_End
		DclSrParm sender Type(*Object)
		DclSrParm e Type(EventArgs)

		// Code that runs when a session ends. 
		// Note: The Session_End event is raised only when the sessionstate mode
		// is set to InProc in the Web.config file. If session mode is set to StateServer 
		// or SQLServer, the event is not raised.
    EndSr       

	BegSr RegisterRoutes
        DclSrParm routes Type(RouteCollection)

        DclFld restRouter Type(ASNA.JsonRestRouting.Router) 
        restRouter = *New ASNA.JsonRestRouting.Router(routes) 

        restRouter.Get("api/customers", "IndexAction", *TypeOf(CustomerAPIController))
    EndSr
</script>
