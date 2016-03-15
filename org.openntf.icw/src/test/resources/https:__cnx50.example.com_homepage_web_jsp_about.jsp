


















	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html lang="en" dir="LTR">
        <head>
			
	<title>About Profiles</title>
	
			
			














<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- Copyright IBM Corp. 2014  All Rights Reserved.                    -->

<link rel="shortcut icon" href="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.oneui3.styles/imageLibrary/Icons/ComponentsGray/ProfilesGray.ico?etag=20160123.163812" type="image/x-icon">

<!-- Copyright IBM Corp. 2014  All Rights Reserved.                    -->

<!--[if IE 6]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie lotusui_ie6";</script><![endif]-->
<!--[if IE 7]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie lotusui_ie7";</script><![endif]-->
<!--[if IE 8]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie8";</script><![endif]-->
<!--[if IE 9]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie9";</script><![endif]-->
<link rel="stylesheet" type="text/css" id="lotusBaseStylesheet" href="https://connections.vestergaardcompany.com/connections/resources/web/_style?include=com.ibm.lconn.core.styles.oneui3/base/package3.css&etag=20160123.163812" appName="profiles" base="https://connections.vestergaardcompany.com/connections/resources/web/" query="?version=oneui3&rtl=false&etag=20160123.163812" theme="gen4" defaultTheme="gen4" oneui="3"></link>
<link rel="stylesheet" type="text/css" id="lotusSpritesStylesheet" href="https://connections.vestergaardcompany.com/connections/resources/web/_style?include=com.ibm.lconn.core.styles.oneui3/sprites.css&etag=20160123.163812"></link>
<link rel="stylesheet" type="text/css" id="lotusThemeStylesheet" href="https://connections.vestergaardcompany.com/connections/resources/web/_lconntheme/gen4.css?version=oneui3&rtl=false&etag=20160123.163812"></link>
<!-- Copyright IBM Corp. 2014  All Rights Reserved.                    -->

<link rel="stylesheet" type="text/css" id="lotusAppStylesheet" href="https://connections.vestergaardcompany.com/connections/resources/web/_lconnappstyles/gen4/profiles.css?version=oneui3&rtl=false&etag=20160123.163812"></link>
<!-- Copyright IBM Corp. 2014  All Rights Reserved.                    -->

<!-- IBM Connections Mobile App for iOS -->
<meta content="app-id=450533489" name="apple-itunes-app" />
<!-- IBM Connections Mobile App for Android -->
<meta content="app-id=com.ibm.lotus.connections.mobile" name="google-play-app" />


<script type="text/javascript">


	//-------------------------------------------[  General JS Variable Configuration ] 
	
	
		
	













(function() {
	if (typeof(profilesData) == "undefined") {
		window.profilesData = {};
	}
	
	profilesData.config = {
		profileLastMod: "",
		appChkSum: "20160123.163812",
		buildNumber: "IC5.0_CR_Profiles_20141013-1531",
		versionNumber: "5.0.0.0",
		appStartupDate: "201603142326982",
		pageId: "",
		langCookieName: "",
		loginReturnPageEnc: "%2Fprofiles%2Fhtml%2FaboutView.do%3Flang%3Den_us",
		isLotusLive: false,
		isMultiTenant: false,
		isAdvancedSearchEnabled: true
	};

	profilesData.displayedUser = { 
		uid: "", 
		profileType: "", 
		email: "",
		key: "", 
		displayName: "", 
		userid:"", 
		status: "", 
		inNetwork: (""=="true"?true:false), 
		isActive: (""=="true"?true:false),
		enabledPermissions: [] 
	};

	profilesData.loggedInUser = {
		isLoggedIn: (""=="true"?true:false),
		loggedInUserUID: "",
		loggedInUserKey: "",
		userid: "1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0",
		displayName: "",
		status: "",
		email: "conn-admin@vestergaardcompany.com",
		isExternal: false,
		enabledPermissions: [] 		
	};
	
	
	
	
	
		 
			profilesData.enabledPermissions = profilesData.loggedInUser.enabledPermissions = "profile.search$profile.search.view,profile.connection$profile.connection.view,profile.following$profile.following.view,profile.reportTo$profile.reportTo.view,profile.connection$profile.connection.message.view,profile.status$profile.status.update,profile.status$profile.status.view,profile.colleague$profile.colleague.connect,profile.following$profile.following.add,profile.sand$profile.sand.dyk.view,profile.sand$profile.sand.recommend.view,profile.sand$profile.sand.inCommon.view,profile.sand$profile.sand.socialPath.view,profile.typeAhead$profile.typeAhead.view".split(",");
		
				
		
		
			


	
	if ( "cefbd6e8-7b99-41a8-8f06-d635e8044609" != "") {
		if( profilesData.loggedInUser.isLoggedIn == "") profilesData.loggedInUser.isLoggedIn = ("cefbd6e8-7b99-41a8-8f06-d635e8044609"!=""?true:false);
		if( profilesData.loggedInUser.loggedInUserUID == "") profilesData.loggedInUser.loggedInUserUID = "1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0";
		if( profilesData.loggedInUser.loggedInUserKey == "") profilesData.loggedInUser.loggedInUserKey = "cefbd6e8-7b99-41a8-8f06-d635e8044609";
	}

	
	if( profilesData.loggedInUser.displayName == "") 
		profilesData.loggedInUser.displayName = "Connections admin";
	
	if (!profilesData.activityStreamConfig) {
		try {
			profilesData.activityStreamConfig = {"defaultUrlTemplateValues":{"userId":"","groupId":"@involved","rollup":"true","shortStrings":"true"},"defaultUrlTemplate":"\/rest\/activitystreams\/urn:lsid:lconn.ibm.com:profiles.person:${userId}\/${groupId}\/${appId}","filters":{"options":{"profiles-activitystream":{"label":"","params":{},"filters":{"label":"Filter By:","options":{"all":{"label":"All","params":{"appId":"@all"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"statusupdates":{"label":"Status Updates","params":{"appId":"@all","broadcast":"true"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"activites":{"label":"Activities","params":{"appId":"activities"}},"blogs":{"label":"Blogs","params":{"appId":"blogs"}},"bookmarks":{"label":"Bookmarks","params":{"appId":"bookmarks"}},"communities":{"label":"Communities","params":{"appId":"communities"}},"files":{"label":"Files","params":{"appId":"files"}},"forums":{"label":"Forums","params":{"appId":"forums"}},"profiles":{"label":"Profiles","params":{"appId":"profiles"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"wikis":{"label":"Wikis","params":{"appId":"wikis"}}},"defaultItem":"all"}}}},"userInfo":{"id":"1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0","displayName":"Connections admin"},"eeManager":"com.ibm.social.as.ee.EEManager","extensions":["com.ibm.social.as.lconn.extension.ProfilesMicroblogDeletionExtension","com.ibm.social.as.lconn.extension.ProfilesCommentExtension","com.ibm.social.as.lconn.extension.ProfilesStatusUpdateExtension","com.ibm.social.as.lconn.extension.GadgetPreloaderExtension","com.ibm.social.as.extension.RepostExtension"]} ;
			window.activityStreamConfig = profilesData.activityStreamConfig;
		} catch (pdError) {
			window.activityStreamConfig = {};
		}
	}

})();

	
	var appName = "profile";

	var svcHrefProfiles = "https://connections.vestergaardcompany.com/profiles";
	var applicationContext = "/profiles";

	var svcHrefHelp = "https://connections.vestergaardcompany.com/help";
	var appCtxHelp = svcHrefHelp.substring(svcHrefHelp.lastIndexOf("/"));

	// alert("profiles: \n["+applicationContext+"]\n["+svcHrefProfiles+"]\n\n"+"help: \n["+appCtxHelp+"]\n["+svcHrefHelp+"]\n");
	var xsltPath = applicationContext + "/static/xslt/" + 20160123.163812; 
	var profileSearchType = "";
	var profiles_isBidiRTL = ('RTL' == '' ? true : false); // RTL (bidi?);
	var bShowEmail = ('showMail' == 'showMail' ? true : false); // show/hide email
	var appLang = "en_us";
	var helpLang = appLang; // "en";
</script>
<script type="text/javascript">
var ibmConfig = {
   serviceName: "profiles",
   proxyURL: "/profiles/ajaxProxy/",
   contextRootEnabler: "/profiles",
   versionStamp: "20160123.163812"
};
var baseProtocol = "https";
var baseHost = "connections.vestergaardcompany.com";
var basePath = "/connections/resources";
var needProxy = (baseHost != window.location.host || baseProtocol+":" != window.location.protocol);
var dojoConfig = djConfig = {
   async: true,
   isDebug: false,
   baseUrl: (needProxy ? (ibmConfig.proxyURL + encodeURIComponent(baseProtocol) + "/" + encodeURIComponent(baseHost)) : (baseProtocol + "://" + baseHost)) + basePath + "/web/dojo/",
   locale: "en-us",
   dojoBlankHtmlUrl: "/profiles/static/20160123.163812/nav/blankIE.html",
   blankGif: "https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812",
   useCommentedJson: true,  
   proxy: "/profiles/ajaxProxy",
   localizationComplete: true
};
</script>
<script type="text/javascript">
var netJazzAjaxConfig = {
    base: "https://connections.vestergaardcompany.com/connections/resources",
    skipStyles: true,
    params: "etag=20160123.163812&lang=en&country=US"
};
CKEDITOR_BASEPATH = window.CKEDITOR_BASEPATH || "https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.oneui.ckeditor/editor/"; 
</script>
<script type="text/javascript">
	djConfig.parseOnLoad = true;

	ibmConfig.portalURI = applicationContext + "/mashupmaker/enabler";
	ibmConfig.proxyURL = 'https://connections.vestergaardcompany.com/profiles/ajaxProxy/';
	ibmConfig.loadServices = false;
	ibmConfig.loadingHTML = '<img src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" height="130" width="0"></img>';
</script>
<script type="text/javascript" src="https://connections.vestergaardcompany.com/connections/resources/web/_js/?include=dojo.main~&etag=20160123.163812&_proxyURL=https%3A%2F%2Fconnections.vestergaardcompany.com%2Fconnections%2Fresources&ss=20160123.163812&lang=en&country=US&variant="></script>
<script type="text/javascript" src="https://connections.vestergaardcompany.com/connections/resources/web/_js/?include=lconn.core.bundle_common~&etag=20160123.163812&exclude=dojo.main~&_proxyURL=https%3A%2F%2Fconnections.vestergaardcompany.com%2Fconnections%2Fresources&ss=20160123.163812&lang=en&country=US&variant="></script>
<script type="text/javascript" src="https://connections.vestergaardcompany.com/connections/resources/web/_js/?include=lconn.profiles.profilesApp~&etag=20160123.163812&exclude=dojo.main~lconn.core.bundle_common~&_proxyURL=https%3A%2F%2Fconnections.vestergaardcompany.com%2Fconnections%2Fresources&ss=20160123.163812&lang=en&country=US&variant="></script>

<script>	
	var profilesGlobalServices = {"help":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/help","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/help"},"microblogging":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/opensocial","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/opensocial"},"bss":{"enabled":false,"ssl_enabled":false},"metrics":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/metrics","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/metrics"},"wikis":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/wikis","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/wikis"},"opengraph":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/opengraph","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/opengraph"},"sand":{"enabled":true,"ssl_enabled":true},"pushnotification":{"enabled":false,"ssl_enabled":false},"personTag":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/profiles\/ibm_semanticTagServlet","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/profiles\/ibm_semanticTagServlet"},"communities":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/communities","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/communities"},"ecm_files":{"enabled":false,"ssl_enabled":false},"oauthprovider":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/oauth2","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/oauth2"},"connectionsmail":{"enabled":false,"ssl_enabled":false},"mediaGallery":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/news\/widgets\/lw","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/news\/widgets\/lw"},"webresources":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/resources","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/resources"},"blogs":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/blogs","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/blogs"},"viewer":{"enabled":false,"ssl_enabled":false},"news":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/news","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/news"},"oauth":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/oauth","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/oauth"},"dogear":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/dogear","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/dogear"},"opensocialLocked":{"enabled":false,"ssl_enabled":false},"mobile":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/mobile","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/mobile"},"quickr":{"enabled":false,"ssl_enabled":false},"bookmarklet":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/bookmarklet","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/bookmarklet"},"moderation":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/moderation","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/moderation"},"deploymentConfig":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections"},"search":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/search","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/search"},"profiles":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/profiles","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/profiles"},"thumbnail":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/thumbnail","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/thumbnail"},"activities":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/activities","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/activities"},"directory":{"enabled":false,"ssl_enabled":false},"homepage":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/homepage","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/homepage"},"forums":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/forums","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/forums"},"opensocial":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/connections\/opensocial","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/connections\/opensocial"},"files":{"enabled":true,"secureUrl":"https:\/\/connections.vestergaardcompany.com\/files","ssl_enabled":true,"url":"http:\/\/connections.vestergaardcompany.com\/files"},"cognos":{"enabled":false,"ssl_enabled":false},"scprofiles":{"enabled":false,"ssl_enabled":false},"sametimeProxy":{"enabled":false,"ssl_enabled":false},"docs":{"enabled":false,"ssl_enabled":false}}; // WhiteList Helper Code
		
	//-------------------------------------------[  Sametime Configuration  ] 
	var sametimeAwarenessConfig = {	
		secureUse: false,
		unsecureUse: false,
		secureURL:'',
		unsecureUrl: '',
		inputType: 'uid'
	};
</script>

		
	
	
	
		
			




<script language="Javascript" type="text/javascript">
	var generalrs = ( typeof(lc_default) != "undefined" ) ? lc_default : ""; // lc_default is set in the widget framework  
</script>





	
	
	
	


<script language="Javascript" type="text/javascript">
	if(SemTagSvcConfig && SemTagSvcConfig.debug) SemTagSvcConfig.debug = (window.debugBizCard == true);
</script>



	
	

				





		
	

        </head>
        <body class="lotusui lotusui30dojo lotusui30_body lotusui30_fonts lotusui30 lotusAbout lotusSpritesOn">
        	

















<div id="lotusAlertDialog_div" style="display:none;">
	<div class="lotusDialogBorder">
		<div id="alertForm" class="lotusDialog lotusForm" style="min-width: 400px;" >
			<div class="lotusDialogHeader">
				<h1 class="lotusHeading">Profiles</h1>
				<a title='Close' role="button" class="lotusRight lotusDialogClose" href="javascript:;" onclick="dijit.byId('lotusAlertDialog').hide(); return true;">
					<img src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" role="presentation" alt='Close' />
					<span class="lotusAltText">X</span>
				</a>
			</div>		
			<div id="lotusAlertDialogContent" class="lotusDialogContent" style="min-width: 400px;" role="alert">
			</div>
			<div class="lotusDialogFooter">
				<input value="Close" class="lotusFormButton" onclick="dijit.byId('lotusAlertDialog').hide(); return true;" type="submit" /> 
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
if( dojo ) {
	// create dojo dijit alert dialog
	dojo.require("dijit.Dialog");
	dojo.addOnLoad( function(){
	    var alertDlg = new dijit.Dialog(
			{ id: "lotusAlertDialog",
		      duration: 1,
		      title: "Profiles",
		      style: "padding: 0px; border: none" 
		    }, 
			"lotusAlertDialog_div");
	});
}
</script>

			<span id="debugArea"></span>
			
			<div id="lotusFrame" class="lotusFrame lotusui30_layout">        
				<div role="banner">
					
						























<script type="text/javascript">
var profiles_gotoLoginRedirect = function() {
	// get current URL and set the loginReturnPage (SPR #XJZO8PTC78)
	var returnToPage = encodeURIComponent( window.location.pathname + window.location.search + window.location.hash );
	profiles_goto('/profiles/auth/loginRedirect.do?loginReturnPage='+returnToPage,true);
}
</script>

	
	
	
		
	


<div id="lotusBanner" class="lotusBanner">
	
	<script type="text/javascript">
if (self != top) {
   try {
      // Reset location if in different host.
      // per Same Origin Policy, try to get top location attributes,
      // will get permission denied if in different origin.
      if (self.location.hostname != top.location.hostname)
         top.location=self.location;
   }catch(e){
      // reset location if in different origin
      top.location=self.location;
   }
}
</script>

<style type="text/css">
.lotusCommunities #lotusColLeft #lotusNavBar #metricsLinkId { display:none; }
</style>


<div class="lotusRightCorner">
   <div class="lotusInner">
	  
	   
     		 
	 <style type="text/css">
		.lotusui30 .lotusBanner {	border-bottom: 1px solid rgb(245,172,0);background: rgb(245,172,0);}
		.lotusui30 div.lotusBanner .lotusRightCorner {	border-bottom: 1px solid rgb(245,172,0);background: #16212F;}
	</style>
	  
	<div class="" id="lotusLogo" style="width: 160px; height: 40px; float:left; margin-top: 3px"><img src="/connections1.png">
	</div>
	<ul class="lotusInlinelist lotusUtility lotusNowrap" id="headerMenuContainer"><li class="lotusFirst" id="lotusPerson"><span id="logoutLabel" aria-label="Log in / log out"><a class="lotusUser" id="headerUserName"
                      onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);"
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);"
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);"
                      role="button" 
                      _lconn_menuid="lconnheadermenu-user"
                      aria-label="Current user Connections admin"
                      src="/profiles/static/20160123.163812!en_us/nav/templates/menu/user.jsp?appName=profiles&username=Connections+admin&userid=1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0"
                      href="javascript:;"><img alt="Connections admin" src="https://connections.vestergaardcompany.com/profiles/photo.do?userid=1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0&small=true" width=26 height=26></img> <img role="presentation" alt="" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></span></li><li id="logoutLi" class="lotusHidden" style="display:none"><span id="loginLabel" role="region" aria-label="Log in / log out"><a id="logoutLink" href="/profiles/ibm_security_logout?logoutExitPage=%2fhtml%2faboutView.do%3flang%3den_us" >Log Out</a></span></li><li class="shareboxLi" id="headerSharebox" ><a class="lotusBannerBtn" href="javascript:;" onclick="dojo.stopEvent(event);dojo.require('net.jazz.ajax.xdloader');net.jazz.ajax.xdloader.load_async('com.ibm.social.sharebox.dialog', dojo.hitch(this, function() {com.ibm.social.sharebox.show();}));" role="button">Share</a></li><li id="languageSelectorText" style="display: none;"></li><li id="headerHelpLi" ><a role="button" aria-label="Open help window" href="javascript:openHelpWindow(&#039;&#039;,&#039;/topic/com.ibm.lotus.connections.profiles.help/pframe.html&#039;);" id="headerHelpLink"><img role="presentation" alt="" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="iconsOther16 iconsOther16-bannerHelpNormal16" /><span class="lotusAltText">?</span></a></li><li><span class="lotusBranding"><img src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" alt="IBM" class="lotusIBMLogo" /><span class="lotusAltText">IBM</span></span></li></ul><ul class="lotusInlinelist lotusLinks" role="navigation" aria-label="Connections"><li id="lotusBannerHomepage" class="lotusFirst "><a href="https://connections.vestergaardcompany.com/homepage/" title="Home" aria-label="Home"><img alt="" role="presentation" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lconnBannerIcon lconnSprite lconnSprite-iconHomeBlue16"><span id="lconnBannerHomepageLabel">Home</span></a></li><li id="lotusBannerProfiles" class=" lotusSelected"><a onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                      role="button" 
                      _lconn_menuid="lconnheadermenu-people"
                      aria-label="Profiles" 
                      src="/profiles/static/20160123.163812!en_us/nav/templates/menu/people.jsp"
                      href="https://connections.vestergaardcompany.com/profiles/"
                      errormessage="Profiles is not available"><img alt="" role="presentation" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lconnBannerIcon lconnSprite lconnSprite-iconProfilesBlue16">Profiles <img role="presentation" alt="" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerCommunities" class=" "><a id="lotusBannerCommunitiesLink" 
                      onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                      role="button" 
                      _lconn_menuid="lconnheadermenu-communities"
                      aria-label="Communities" 
                      src="/profiles/static/20160123.163812!en_us/nav/templates/menu/communities.jsp?authenticated=true"
                      href="https://connections.vestergaardcompany.com/communities/"
                      errormessage="Communities is not available"><img alt="" role="presentation" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lconnBannerIcon lconnSprite lconnSprite-iconCommunitiesBlue16">Communities <img role="presentation" alt="" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerApps" class=" "><a onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                   onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                   onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                   role="button" 
                   _lconn_menuid="lconnheadermenu-apps"
                   aria-label="Apps" 
                   src="/profiles/static/20160123.163812!en_us/nav/templates/menu/apps.jsp"
                   href="javascript:;"
                   errormessage="Profiles is not available">Apps <img role="presentation" alt="" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerHeaderMetrics" style="display:none" class=""><a href="https://connections.vestergaardcompany.com/metrics/">Metrics</a></li><li id="lotusBannerModeration" style="display:none" class=""><a href="https://connections.vestergaardcompany.com/moderation/">Moderation</a></li></ul><div class="lotusClear"><!-- IE --></div></div></div>

</div>
<script type="text/javascript">
dojo.addOnLoad(function(){
	// RTC#71644 - special login/logout logic now handled by common code;
	var logoutElem = dojo.byId('logoutLink');
	if(logoutElem){
		var logoutLink = logoutElem.href;
		dojo.attr(logoutElem,{href: 'javascript:;'});
		if(logoutLink!=null){
			dojo.connect(logoutElem,'onclick', this, function(){
				//if (lconn.core.auth.isAuthenticated()) lconn.core.auth.isAuthenticated() needs to be recoded with reliable API... use profilesData until then.
				if( profilesData != null && profilesData.loggedInUser != null && profilesData.loggedInUser.isLoggedIn)
					lconn.core.auth.logout();
				else
					lconn.core.auth.login(); 
			});
		}
	}
});
</script>


					
					
						











 




<script type="text/javascript">
	
	var lconn_core_thirdPartySearchEngines = [];
</script>










	
	 
		<div class="lotusTitleBar2 lotusTitleBar2Tabs">
		   <div class="lotusWrapper">
			  <div class="lotusInner">
				 <div class="lotusTitleBarContent">
					<h2 class="lotusHeading">
						<img alt="" class="lotusIcon iconsComponentsBlue24 iconsComponentsBlue24-ProfilesBlue24" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812"><span class="lotusText">Profiles</span>
					</h2>
					<div aria-label="Profiles" role="navigation" aria-controls="lotusMain">
					   <ul id="lotusHeaderNavigation_UL" class="lotusNavTabs" role="toolbar" aria-label="Profiles">
						  <li id="liProfileHeader_MyProfile"><div class="lotusTabWrapper"><a id="aProfileHeader_MyProfile" onclick="lconn.profiles.ProfilesCore.setLastElement(this.id);" class="lotusTab" href='/profiles/html/myProfileView.do?lang=en_us' role="button" aria-label="My Profile"><span class="lotusTabInner">My Profile</span></a></div></li>
						  <li id="liProfileHeader_MyNetwork"><div class="lotusTabWrapper"><a id="aProfileHeader_MyNetwork" onclick="lconn.profiles.ProfilesCore.setLastElement(this.id);" class="lotusTab" href='/profiles/html/networkView.do?widgetId=friends&amp;requireAuth=true&amp;lang=en_us' role="button" aria-label="My Network"><span class="lotusTabInner">My Network</span></a></div></li>
						  <li id="liProfileHeader_Directory"><div class="lotusTabWrapper"><a id="aProfileHeader_Directory" onclick="lconn.profiles.ProfilesCore.setLastElement(this.id);" class="lotusTab" href='/profiles/html/searchProfiles.do?lang=en_us' role="button" aria-label="Directory"><span class="lotusTabInner">Directory</span></a></div></li>
					   </ul>
					<div class="lotusClear"></div>
				 </div>
			  </div>
			  <div id="commonSearchControlDiv">
				 











<script type="text/javascript">
if (typeof(dojo) != "undefined") {  
	dojo.addOnLoad(function(){ 
		if (dojo.exists("lconn.profiles.SearchBar")) {
			var cntr = dojo.byId('commonSearchControlDiv');
			if (cntr) {
			
				var opts = {
					searchContextPath: 'https://connections.vestergaardcompany.com/search',
					localOptions: []
				};

				
					
					
						opts.localOptions.push({
							label: 'Profiles by Name',
							scope: 'simple',
							action: '/profiles/html/simpleSearch.do?lang=en_us'
						});
						opts.localOptions.push({
							label: 'Profiles by Keyword',
							scope: 'keyword',
							action: '/profiles/html/keywordSearch.do?lang=en_us',
							valueSearchParam: 'keyword',
							searchParams: {
								'keyword' : ''
							}
						});
						
					
					
				
				 
				new lconn.profiles.SearchBar(opts, cntr);

			}
		}
	});
}

</script>


			 </div>
			</div>			 
		  </div>
		</div>
	
	




					
				</div>
				<div id="lotusMain" class="lotusMain">
					
					
					
		<script type="text/javascript">
			













(function() {
	if (typeof(profilesData) == "undefined") {
		window.profilesData = {};
	}
	
	profilesData.config = {
		profileLastMod: "",
		appChkSum: "20160123.163812",
		buildNumber: "IC5.0_CR_Profiles_20141013-1531",
		versionNumber: "5.0.0.0",
		appStartupDate: "201603142326982",
		pageId: "",
		langCookieName: "",
		loginReturnPageEnc: "%2Fprofiles%2Fhtml%2FaboutView.do%3Flang%3Den_us",
		isLotusLive: false,
		isMultiTenant: false,
		isAdvancedSearchEnabled: true
	};

	profilesData.displayedUser = { 
		uid: "", 
		profileType: "", 
		email: "",
		key: "", 
		displayName: "", 
		userid:"", 
		status: "", 
		inNetwork: (""=="true"?true:false), 
		isActive: (""=="true"?true:false),
		enabledPermissions: [] 
	};

	profilesData.loggedInUser = {
		isLoggedIn: (""=="true"?true:false),
		loggedInUserUID: "",
		loggedInUserKey: "",
		userid: "1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0",
		displayName: "",
		status: "",
		email: "conn-admin@vestergaardcompany.com",
		isExternal: false,
		enabledPermissions: [] 		
	};
	
	
	
	
	
		 
			profilesData.enabledPermissions = profilesData.loggedInUser.enabledPermissions = "profile.search$profile.search.view,profile.connection$profile.connection.view,profile.following$profile.following.view,profile.reportTo$profile.reportTo.view,profile.connection$profile.connection.message.view,profile.status$profile.status.update,profile.status$profile.status.view,profile.colleague$profile.colleague.connect,profile.following$profile.following.add,profile.sand$profile.sand.dyk.view,profile.sand$profile.sand.recommend.view,profile.sand$profile.sand.inCommon.view,profile.sand$profile.sand.socialPath.view,profile.typeAhead$profile.typeAhead.view".split(",");
		
				
		
		
			


	
	if ( "cefbd6e8-7b99-41a8-8f06-d635e8044609" != "") {
		if( profilesData.loggedInUser.isLoggedIn == "") profilesData.loggedInUser.isLoggedIn = ("cefbd6e8-7b99-41a8-8f06-d635e8044609"!=""?true:false);
		if( profilesData.loggedInUser.loggedInUserUID == "") profilesData.loggedInUser.loggedInUserUID = "1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0";
		if( profilesData.loggedInUser.loggedInUserKey == "") profilesData.loggedInUser.loggedInUserKey = "cefbd6e8-7b99-41a8-8f06-d635e8044609";
	}

	
	if( profilesData.loggedInUser.displayName == "") 
		profilesData.loggedInUser.displayName = "Connections admin";
	
	if (!profilesData.activityStreamConfig) {
		try {
			profilesData.activityStreamConfig = {"defaultUrlTemplateValues":{"userId":"","groupId":"@involved","rollup":"true","shortStrings":"true"},"defaultUrlTemplate":"\/rest\/activitystreams\/urn:lsid:lconn.ibm.com:profiles.person:${userId}\/${groupId}\/${appId}","filters":{"options":{"profiles-activitystream":{"label":"","params":{},"filters":{"label":"Filter By:","options":{"all":{"label":"All","params":{"appId":"@all"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"statusupdates":{"label":"Status Updates","params":{"appId":"@all","broadcast":"true"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"activites":{"label":"Activities","params":{"appId":"activities"}},"blogs":{"label":"Blogs","params":{"appId":"blogs"}},"bookmarks":{"label":"Bookmarks","params":{"appId":"bookmarks"}},"communities":{"label":"Communities","params":{"appId":"communities"}},"files":{"label":"Files","params":{"appId":"files"}},"forums":{"label":"Forums","params":{"appId":"forums"}},"profiles":{"label":"Profiles","params":{"appId":"profiles"},"extensions":["com.ibm.social.as.lconn.extension.ShareboxStatusUpdateExtension"]},"wikis":{"label":"Wikis","params":{"appId":"wikis"}}},"defaultItem":"all"}}}},"userInfo":{"id":"1D8CE7F0-8F12-4D57-BDEA-6EA204BE99E0","displayName":"Connections admin"},"eeManager":"com.ibm.social.as.ee.EEManager","extensions":["com.ibm.social.as.lconn.extension.ProfilesMicroblogDeletionExtension","com.ibm.social.as.lconn.extension.ProfilesCommentExtension","com.ibm.social.as.lconn.extension.ProfilesStatusUpdateExtension","com.ibm.social.as.lconn.extension.GadgetPreloaderExtension","com.ibm.social.as.extension.RepostExtension"]} ;
			window.activityStreamConfig = profilesData.activityStreamConfig;
		} catch (pdError) {
			window.activityStreamConfig = {};
		}
	}

})();

			profilesData.config.pageId = "aboutProfilesView";
			dojo.addOnLoad(
				function() {
					dojo.parser.parse(dojo.byId("lotusFrame"));
			});
		</script>

		<div id="lotusColRight" class="lotusColRight">
			<div class="lotusSection lotusFirst" role="complementary" aria-labelledby="profileMoreInfoSectionHeader">
				<h2 id="profileMoreInfoSectionHeader">Find Out More</h2>
				<div class="lotusSectionBody">
					<div class="lotusChunk">
						<ul class="lotusList">	
							<li><a href="#" class="lotusAction help_link">Help</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="lotusInfoBox" role="complementary" aria-labelledby="profileTipsSectionHeader">
				<h3 id="profileTipsSectionHeader"><span class="lotusLeft">Tips</span></h3>
				<p>Add a personal touch by including a picture with your profile.</p>
				
				<p>The Reporting Structure view for a profile lists either a person's full reporting hierarchy or lists peers reporting to the same manager.</p>
				<p>Fill in the About Me section of your profile to let your network know more about you.</p>
			</div><!-- end tips -->
		</div>
		<!-- content -->
		<div class="lotusContent" role="main">
			<a id="mainContent" name="mainContent"></a><!-- skip links for accessibility -->
			<!--  aboutBox -->
			<div class="lotusAboutBox">	
				<img class="iconsComponentsWhite128 iconsComponentsWhite128-ProfilesWhite128" src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160123.163812" alt=""/>
				<!-- aboutText -->
				<div class="lotusAboutText">
					<h1>Profiles</h1>
					<h3>Who is in your organization?</h3>
					<p>Profiles are a directory of the people in your organization as well as information you need to form and encourage effective networks. In addition to basic information captured in a business card format, profiles catalog skills such as technical expertise, familiarity with foreign languages, and areas of interest.</p>
				</div>
			</div>
			<div class="lotusContentColOne">
				<h2>Get the word out about what you can do.</h2>
				<p>Fill out your own profile with contact information. Let your community, company, or organization know what you can do, what your interests are, and how to get in touch with you. Apply some tags to your profiles to give others another way to find you.</p>
				<p><a href="#" class="lotusAction edit_help_link" aria-label="Get the word out about what you can do.">Find out more</a></p>
				<h2>Find the expertise you need.</h2>
				<p>Looking for an expert in a specific area? Search profiles to find people with the skills you need. Profiles can help you reach out to people and build up a collaborative network of connected people. You can search by different criteria, including location, experience, and interest.</p>
				<p><a href="#" class="lotusAction search_help_link" aria-label="Find the expertise you need.">Find out more</a></p>
			</div>
			<div class="lotusContentColTwo">
				<h2>Search with tags</h2>
				<p>Tags are descriptive keywords you create and assign to identify particular roles or activities in your organization. For example, you might search on a tag called accessibility to find all of the users who have used that tag to indicate that they have accessibility expertise.</p>
				<p><a href="#" class="lotusAction tags_help_link" aria-label="Search with tags">Find out more</a></p>
				<h2>Follow the links</h2>
				<p>In addition to viewing a person's contact information, you can access links to related content that they make available from their profile. For example, you might find a link to a blog that the user has posted, or to an article bookmarked on a Web site.</p>
				<p><a href="#" class="lotusAction related_content_help_link" aria-label="Follow the links">Find out more</a></p>
			</div>
		</div>
    
				</div>
				
					

















<!-- nav footer -->
<div id="lotusFooter" class="lotusFooter" role="contentinfo">
	<ul><li><a href="https://connections.vestergaardcompany.com/homepage/">Home</a></li><li><a href="javascript:;" onclick="javascript:openHelpWindow('','/topic/com.ibm.lotus.connections.profiles.help/pframe.html'); return false;" class="">Help</a></li><li><a href="http://www-10.lotus.com/ldd/lcforum.nsf">IBM Support Forums</a></li> <li><a href="/profiles/nav/toolbox?appName=profiles" class="">Bookmarking Tools</a></li><li id="lotusBannerFooterMetrics" style="display:none"><a class="lotusMetricsReaderLink" href="https://connections.vestergaardcompany.com/metrics/">Server Metrics</a></li><li id="lconnFooterMobile" class="lotusHidden"><a id="lconnMobileRedirectLink" href="javascript:;">Mobile UI</a></li><li><a href="/profiles/app/about" class="">About</a></li><li><a href="http://www-306.ibm.com/software/lotus/products/connections/">IBM Connections on ibm.com</a></li><li><a href="http://www.lotus.com/ldd/doc/cct/nextgen.nsf/feedback_choice?OpenForm&amp;Context=footer+ventura+NoTitle+4.5">Submit Feedback</a></li></ul><script type="text/javascript">
(function(){
   function loadConnectionsLanguageSelector() {
      try {
         dojo.require("lconn.core.header");
         lconn.core.header.enableLanguageSelector("languageSelectorText", {"da":"Dansk","en":"English","fr":"Fran\u00e7ais","th":"\u0e44\u0e17\u0e22"},
            "lcLang", "", -1);
      } catch (e) {
         console.error(e);
      }
   }
   if (dojo.exists("lconn.core.header") && !dojo.exists("_skipConnectionsLanguageSelector"))
      dojo.addOnLoad(loadConnectionsLanguageSelector);
})();
</script><script type="text/javascript">
      dojo.require("lconn.core.header.apps");
      dojo.require("lconn.core.auth");

    </script><script type="text/javascript">
         dojo.addOnLoad(function(){
            lconn.core.header.apps.updateLoginRegion();
            lconn.core.header.apps.updateBannerByRoles();
         });
       </script>
</div>
<div>
		<table cellspacing="0" role="presentation" class="lotusLegal"><tbody><tr><td><div aria-label="IBM" class="lotusIBMLogo"> </div><span class="lotusAltText">IBM</span></td><td class="lotusLicense">Licensed Materials - Property of IBM, 5724-S68 � Copyright IBM Corporation 2007, 2014. All Rights Reserved. IBM, the IBM logo, ibm.com and Lotus are trademarks of IBM Corporation in the United States, other countries, or both. Java and all Java-based trademarks are trademarks of Sun Microsystems, Inc. in the United States, other countries, or both. Other company, product, or service names may be trademarks or service marks of others.  A current list of IBM trademarks is available on the Web at www.ibm.com/legal/copytrade.shtml. (http://www.ibm.com/legal/copytrade.shtml.)  U.S. Government Users Restricted Rights:  Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.  This Program is licensed under the terms of the license agreement accompanying the Program.  This license agreement may be either located in a Program directory folder or library identified as "License" or "Non IBM License", if applicable, or provided as a printed license agreement. Please read this agreement carefully before using the Program. By using the Program, you agree to these terms.</td><td><img src="https://connections.vestergaardcompany.com/connections/resources/web/com.ibm.oneui3.styles/imageLibrary/Branding/Logos/javaCompatibleLogoWhite.png?etag=20160123.163812" alt="Java Compatible" /><span class="lotusAltText">Java Compatible</span></td></tr><tr><td></td><td class="lotusBuild">Release v5.0.0.0 build IC5.0_CR_Profiles_20141013-1531</td><td></td></tr></tbody></table>
</div>

<script type="text/javascript">
dojo.query(".lotusLicense").forEach(function(node) { /*a11y*/
	var string = node.innerHTML;
	var stringlist = string.split("\"");
	if (stringlist.length % 2 == 1) {
		for (var ii = 0; ii < stringlist.length; ii++) {
			if (ii % 2 == 1) {
				stringlist[ii] = "<q>" + stringlist[ii] + "</q>";
			}
		}
		node.innerHTML = stringlist.join("");
	}
});
</script>

				
			</div>
        </body>
    </html>


