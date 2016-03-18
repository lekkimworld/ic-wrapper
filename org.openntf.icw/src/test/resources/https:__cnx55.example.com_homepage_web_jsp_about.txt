
 
 

 
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
 
 
 
 
 
 
 
<script type="text/javascript">if (typeof lconn == 'undefined') {
var lconn={};lconn.homepage={};lconn.homepage.global={};
}
lconn.homepage.global.isAuthenticated=(function () {
return true;
});
</script>
 
 
 
 
 
 
 
<html xmlns="http://www.w3.org/1999/xhtml"
dir="ltr"
lang="en"
xml:lang="en"><head><script type="text/javascript">(function() {
var s=window.location.search;
var enableLogging=s && (
s.indexOf("debug=dojo") != -1 ||
s.indexOf("debug=true") != -1 ||
s.indexOf("debug-hp"));
if (enableLogging) {
var backupVer=function() {
var msg="", i;
for (i=0; i < arguments.length; i++) {
msg+=arguments[i] + " ";
}
window.console.log(msg);
};
if (window.console && window.console.debug) {
try {
window.hp_console_debug=window.console.debug;
window.hp_console_debug("Create hp_console_debug()");
} catch (e) {
window.hp_console_debug=backupVer;
}
} else { 
window.hp_console_debug=backupVer;
}
} else {
window.hp_console_debug=function() {};
}
})();
</script> 
 
 
 
 
 
 
 
<meta http-equiv="content-type" content="text/html; charset=utf-8" /><meta http-equiv="pragma" content="no-cache" /><meta http-equiv="cache-control" content="private,max-age=0" />
<link rel="shortcut icon" href="https://inside.intravision.dk/connections/resources/web/com.ibm.oneui3.styles/imageLibrary/Icons/ComponentsGray/HomeGray.ico?etag=20160314.102606" type="image/x-icon">
<!-- Copyright IBM Corp. 2016  All Rights Reserved.                    -->
<title>IBM Connections Home Page</title> 
 


 
<!-- Copyright IBM Corp. 2016  All Rights Reserved.                    -->

<!--[if IE 6]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie lotusui_ie6";</script><![endif]-->
<!--[if IE 7]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie lotusui_ie7";</script><![endif]-->
<!--[if IE 8]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie8";</script><![endif]-->
<!--[if IE 9]><script>document.getElementsByTagName("html")[0].className+=" lotusui_ie9";</script><![endif]-->
<link rel="stylesheet" type="text/css" id="lotusBaseStylesheet" href="https://inside.intravision.dk/connections/resources/web/_style?include=com.ibm.lconn.core.styles.oneui3/base/package3.css&etag=20160314.102606" appName="homepage" base="https://inside.intravision.dk/connections/resources/web/" query="?version=oneui3&rtl=false&etag=20160314.102606" theme="hikari" defaultTheme="hikari" oneui="3"></link>
<link rel="stylesheet" type="text/css" id="lotusSpritesStylesheet" href="https://inside.intravision.dk/connections/resources/web/_style?include=com.ibm.lconn.core.styles.oneui3/sprites.css&etag=20160314.102606"></link>
<link rel="stylesheet" type="text/css" id="lotusThemeStylesheet" href="https://inside.intravision.dk/connections/resources/web/_lconntheme/hikari.css?version=oneui3&rtl=false&etag=20160314.102606"></link>
<!-- Copyright IBM Corp. 2016  All Rights Reserved.                    -->

<link rel="stylesheet" type="text/css" id="lotusAppStylesheet" href="https://inside.intravision.dk/connections/resources/web/_lconnappstyles/hikari/homepage.css?version=oneui3&rtl=false&etag=20160314.102606"></link>
<!-- Copyright IBM Corp. 2016  All Rights Reserved.                    -->
<!-- Copyright IBM Corp. 2016  All Rights Reserved.                    -->

<!-- IBM Connections Mobile App for iOS -->
<meta content="app-id=450533489" name="apple-itunes-app" />
<!-- IBM Connections Mobile App for Android -->
<meta content="app-id=com.ibm.lotus.connections.mobile" name="google-play-app" />

 
 
 
 
 
 
 

 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
<script type="text/javascript">if (typeof lconn == 'undefined'){
var lconn={};
lconn.homepage={};
lconn.homepage.global={};
}
</script> 
 


 
<script type="text/javascript">lconn.homepage.global.isErrorMsgDisplayed=false;
function toggleErrorMsg(el) {
if (lconn.homepage.global.isErrorMsgDisplayed) {
document.getElementById("stackTrace").style.display="none";
lconn.homepage.global.isErrorMsgDisplayed=false;
el.innerHTML=document.getElementById("showErrorMsg").innerHTML;
} else {
document.getElementById("stackTrace").style.display="";
lconn.homepage.global.isErrorMsgDisplayed=true;
el.innerHTML=document.getElementById("hideErrorMsg").innerHTML;
}
}
</script>
 
<script type="text/javascript"> 
var user="mfh@intravision.dk";
var userid="1FCAA008-88CE-8447-C125-734C0035C155";
 
lconn.homepage.userName="Mikkel Flindt Heisterberg";
lconn.homepage.userEmail="mfh@intravision.dk";
lconn.homepage.userExtId="1FCAA008-88CE-8447-C125-734C0035C155";
var isExternalFlag="false";
lconn.homepage.userIsExternal=(isExternalFlag && isExternalFlag === "true") ? true : false;
lconn.homepage.global.getUserId=(function(){
var userId="1FCAA008-88CE-8447-C125-734C0035C155";
return function(){
return userId;
};
}());
</script> 
<script type="text/javascript"> 
lconn.homepage.global.proxyUrl='https://inside.intravision.dk/homepage/web/jsp/about.jsp';
lconn.homepage.global.proxyUrl=lconn.homepage.global.proxyUrl.substring(0, lconn.homepage.global.proxyUrl.indexOf('/web/jsp/about.jsp'));
lconn.homepage.global.proxyUrl+="/web/proxy";
 
var proxyUrl=lconn.homepage.global.proxyUrl;
</script> 
<script type="text/javascript">lconn.homepage.global.isSecure=true;
lconn.homepage.global.contextRoot="\/homepage";
lconn.homepage.global.build="20160314.102606";
</script> 
<script type="text/javascript">lconn.homepage.global.services={"help":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/help","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/help"},"microblogging":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/opensocial","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/opensocial"},"bss":{"enabled":false,"ssl_enabled":false},"wikis":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/wikis","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/wikis"},"metrics":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/metrics","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/metrics"},"opengraph":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/opengraph","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/opengraph"},"sand":{"enabled":true,"ssl_enabled":true},"pushnotification":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/push","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/push"},"personTag":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/profiles\/ibm_semanticTagServlet","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/profiles\/ibm_semanticTagServlet"},"communities":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/communities","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/communities"},"ecm_files":{"enabled":false,"ssl_enabled":false},"oauthprovider":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/oauth2","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/oauth2"},"connectionsmail":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/resources\/socmail-client","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/resources\/socmail-client"},"mediaGallery":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/news\/widgets\/lw","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/news\/widgets\/lw"},"webresources":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/resources","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/resources"},"blogs":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/blogs","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/blogs"},"viewer":{"enabled":false,"ssl_enabled":false},"news":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/news","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/news"},"oauth":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/oauth","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/oauth"},"dogear":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/dogear","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/dogear"},"extensionRegistry":{"enabled":false,"ssl_enabled":false},"opensocialLocked":{"enabled":false,"ssl_enabled":false},"mobile":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/mobile","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/mobile"},"rte":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/rte","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/rte"},"bookmarklet":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/bookmarklet","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/bookmarklet"},"quickr":{"enabled":false,"ssl_enabled":false},"moderation":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/moderation","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/moderation"},"deploymentConfig":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections"},"search":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/search","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/search"},"profiles":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/profiles","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/profiles"},"thumbnail":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/thumbnail","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/thumbnail"},"activities":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/activities","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/activities"},"directory":{"enabled":false,"ssl_enabled":false},"homepage":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/homepage","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/homepage"},"forums":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/forums","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/forums"},"opensocial":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/connections\/opensocial","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/connections\/opensocial"},"files":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/files","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/files"},"cognos":{"enabled":false,"ssl_enabled":false},"scprofiles":{"enabled":false,"ssl_enabled":false},"sametimeProxy":{"enabled":false,"ssl_enabled":false},"docs":{"enabled":false,"ssl_enabled":false},"eventTracker":{"enabled":true,"secureUrl":"https:\/\/inside.intravision.dk\/search","ssl_enabled":true,"url":"http:\/\/inside.intravision.dk\/search"}};
</script> 
<script type="text/javascript">lconn.homepage.global.actionRequiredTotal="";
</script>

<script type="text/javascript">
var ibmConfig = {
   serviceName: "homepage",
   proxyURL: "/homepage/ajaxProxy/",
   contextRootEnabler: "/homepage",
   versionStamp: "20160314.102606"
};
var baseProtocol = "https";
var baseHost = "inside.intravision.dk";
var basePath = "/connections/resources";
var needProxy = (baseHost != window.location.host || baseProtocol+":" != window.location.protocol);
var dojoConfig = djConfig = {
   async: true,
   isDebug: false,
   baseUrl: (needProxy ? (ibmConfig.proxyURL + encodeURIComponent(baseProtocol) + "/" + encodeURIComponent(baseHost)) : (baseProtocol + "://" + baseHost)) + basePath + "/web/dojo/",
   locale: "en",
   dojoBlankHtmlUrl: "/homepage/static/20160314.102606/nav/blankIE.html",
   blankGif: "https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606",
   useCommentedJson: true,  
   proxy: "/homepage/ajaxProxy",
   localizationComplete: true
};
</script>
<script type="text/javascript">
var netJazzAjaxConfig = {
    base: "https://inside.intravision.dk/connections/resources",
    skipStyles: true,
    params: "etag=20160314.102606&lang=en"
};
CKEDITOR_BASEPATH = window.CKEDITOR_BASEPATH || "https://inside.intravision.dk/connections/resources/web/com.ibm.oneui.ckeditor/editor/"; 
</script>
<script type="text/javascript">
var gatekeeperConfig = {"contacts-group-member-grouponly":false,"files-tree-dnd":false,"news-read-status-enabled":true,"fileviewer-panels":true,"ckeditor-lite-mentions":true,"files-enable-public-folders-view-for-nested-folder":false,"sharepoint_iframe_widget":false,"community-aware-access-denied":false,"fileviewer-everywhere-activitystream":true,"fileviewer-detailspage":true,"fileviewer-panels-textnav":true,"files-tree-dnd-accepts-folders":false,"wikis-rich-content-widget":true,"visitor-model-support-for-org":false,"search-visitor-model-content-filtering-suport":false,"fileviewer-welcome":false,"event-tracker-metrics-via-event-tracker-only":true,"contacts-group-peoplepicker":false,"activity-recentupdate-leftnavigation":true,"search-dr-validation-enabled":false,"wikis-enable-used-page-title":false,"files-personal-dnd-upload-indicator":true,"files-nested-folder":true,"files-enable-file-zip-download":true,"files-enable-folder-zip-download-for-nested-folder":false,"communities-move-community":true,"json-widget-metadata":true,"highway-distributed-file-system-support":false,"files-enable-recent-people-link":false,"news-push-service":true,"search-global-search-restyle":true,"hikari-default-theme":true,"contacts-group-nested":false,"fileviewer-preview-videojs":true,"files-left-navigation-pinned-expandable":false,"org-visitor-model-transition":false,"fileviewer-ir-error":false,"fileviewer-ccm-preview":true,"files-add-to-sync-in-listview":true,"activities-block-community":true,"files-tree-dnd-accepts-files":false,"fileviewer-everywhere":true,"files-enable-custom-view":true,"contacts-group-hierarchical":false,"fileviewer-theme-light":false,"fileviewer-panels-resize":true,"fileviewer-history":true,"files-independent-scrollbars":true,"calendar-export-ical-file":true,"files-left-navigation-sharefolder-expandable":false,"search-history-view-ui":false,"widget-catalog-scee-impl":false,"forums-forum-search-attachment":true,"fileviewer-close-on-edit":false,"communities-list-restricted":true,"files-tree-dnd-source":false,"communities-tabbed-nav":false,"ie-native-mode":true,"media-gallery":false,"files-enable-shared-by-me-view-for-nested-folder":false,"event-tracker-service":true,"files-new-banner-in-sync-view":true,"fileviewer-thumbnail":false,"fileviewer-preview-text":false,"files-picker-dnd":true,"contacts-sync-with-notes":false,"ui-language-setting":false,"contacts-group-info":false,"filesync-push-service":false,"files-grant-file-edit-permission-to-folder-editor-only":true,"fileviewer-ir-autopublish":true,"ckeditor-lite-mentions-ee":true,"notification-center-live-updates":true};
</script>
<script type="text/javascript">djConfig.staticRoot="/homepage/static/20160314.102606";
</script>
<script type="text/javascript" src="https://inside.intravision.dk/connections/resources/web/_js/?include=dojo.main~&etag=20160314.102606&_proxyURL=https%3A%2F%2Finside.intravision.dk%2Fconnections%2Fresources&ss=20160314.102606&lang=en&country=&variant="></script>
<script type="text/javascript" src="https://inside.intravision.dk/connections/resources/web/_js/?include=lconn.core.bundle_common~&etag=20160314.102606&exclude=dojo.main~&_proxyURL=https%3A%2F%2Finside.intravision.dk%2Fconnections%2Fresources&ss=20160314.102606&lang=en&country=&variant="></script>
<script type="text/javascript" src="https://inside.intravision.dk/connections/resources/web/_js/?include=lconn.homepage.modules.common~&etag=20160314.102606&exclude=dojo.main~lconn.core.bundle_common~&_proxyURL=https%3A%2F%2Finside.intravision.dk%2Fconnections%2Fresources&ss=20160314.102606&lang=en&country=&variant="></script>
<script type="text/javascript" src="https://inside.intravision.dk/connections/resources/web/_js/?include=lconn.homepage.modules.static~&etag=20160314.102606&exclude=dojo.main~lconn.core.bundle_common~lconn.homepage.modules.common~&_proxyURL=https%3A%2F%2Finside.intravision.dk%2Fconnections%2Fresources&ss=20160314.102606&lang=en&country=&variant="></script>

<script type="text/javascript">dojo.subscribe(com.ibm.social.as.constants.events.CHANGEPAGETITLE, function(pageTitle){
document.title='IBM Connections Home Page'+" - "+pageTitle;
});
</script>
</head> 
<body class="lotusui lotusui30dojo lotusui30_body lotusui30_fonts lotusui30 lotusAbout lotusSpritesOn"><div id="lotusFrame" class="lotusui30_layout lotusFrame"><div role="banner"> 
 
 
 
 
 
 
 
 
 


 
 
 
<div id="lotusBanner" class="lotusBanner"><script type="text/javascript">
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
<div class="lotusRightCorner">
   <div class="lotusInner"><div class="lotusLogo" id="lotusLogo"><span class="lotusAltText">INside551</span></div>
	<ul class="lotusInlinelist lotusLinks" aria-label="Connections"><li id="lotusBannerHomepage" class="lotusFirst lotusSelected"><a href="https://inside.intravision.dk/homepage/" title="Home" aria-label="Home"><img alt="" role="presentation" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lconnBannerIcon lconnSprite lconnSprite-iconHomeBlue16"><span id="lconnBannerHomepageLabel">Home</span></a></li><li id="lotusBannerProfiles" class=" "><a onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                      role="button" 
                      _lconn_menuid="lconnheadermenu-people"
                      aria-label="Profiles" 
                      src="/homepage/static/20160314.102606!en/nav/templates/menu/people.jsp"
                      href="https://inside.intravision.dk/profiles/"
                      errormessage="Profiles is not available"><img alt="" role="presentation" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lconnBannerIcon lconnSprite lconnSprite-iconProfilesBlue16">Profiles <img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerCommunities" class=" "><a id="lotusBannerCommunitiesLink" 
                      onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                      role="button" 
                      _lconn_menuid="lconnheadermenu-communities"
                      aria-label="Communities" 
                      src="/homepage/static/20160314.102606!en/nav/templates/menu/communities.jsp?authenticated=true"
                      href="https://inside.intravision.dk/communities/"
                      errormessage="Communities is not available"><img alt="" role="presentation" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lconnBannerIcon lconnSprite lconnSprite-iconCommunitiesBlue16">Communities <img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerApps" class=" "><a onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);" 
                   onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);" 
                   onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);" 
                   role="button" 
                   _lconn_menuid="lconnheadermenu-apps"
                   aria-label="Apps" 
                   src="/homepage/static/20160314.102606!en/nav/templates/menu/apps.jsp"
                   href="javascript:;"
                   errormessage="Homepage is not available">Apps <img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></li><li id="lotusBannerHeaderMetrics" style="display:none" class=""><a href="https://inside.intravision.dk/metrics/">Metrics</a></li><li id="lotusBannerModeration" style="display:none" class=""><a href="https://inside.intravision.dk/moderation/">Moderation</a></li><script type="text/javascript" src="/kudosboards/resources/js/app/activities-header-injection.js" charset="utf-8"></script><script type="text/javascript" charset="utf-8">boardsHeaderInjector.data.VIEW_AS_BOARD = "View Activity as Board"</script><style type="text/css">.lotusui30 div.lotusPlaceBar h2{width:auto !important;}</style></ul>
      <ul class="lotusInlinelist lotusUtility lotusNowrap" id="headerMenuContainer"><li class="lotusFirst"><div id="lotusSearchButton"></div></li><li id="lotusBannerNotifications"><a id="notificationCenterNode"         	 			  
        			  	  onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);"
        	              onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);"
        	              onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);"
                          role="button"                           
                          aria-label="Notifications"
                          src="/homepage/static/20160314.102606!en/nav/templates/menu/notifications.jsp"
                          _lconn_menuid="lconnheadermenu-notifications"                                                                             
                          href="javascript:;"><img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lconnSprite iconsComponents16-Notifications" /><span class="lotusAltText">Notifications</span></a></li><li class="" id="lotusPerson"><span id="logoutLabel" aria-label="Log in / log out"><a class="lotusUser" id="headerUserName"
                      onmouseover="dojo.require('lconn.core.header');lconn.core.header.menuMouseover(this);"
                      onclick="dojo.require('lconn.core.header');lconn.core.header.menuClick(this);"
                      onfocus="dojo.require('lconn.core.header');lconn.core.header.menuFocus(this);"
                      role="button" 
                      _lconn_menuid="lconnheadermenu-user"
                      aria-label="Current user Mikkel Flindt Heisterberg"
                      src="/homepage/static/20160314.102606!en/nav/templates/menu/user.jsp?appName=homepage&username=Mikkel+Flindt+Heisterberg&userid=1FCAA008-88CE-8447-C125-734C0035C155"
                      href="javascript:;"><img class="usersRadius" alt="Mikkel Flindt Heisterberg" src="https://inside.intravision.dk/profiles/photo.do?userid=1FCAA008-88CE-8447-C125-734C0035C155&small=true" width=26 height=26></img> <img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lotusArrow lotusDropDownSprite"><span class="lotusAltText">&#9660;</span></a></span></li><li id="logoutLi" class="lotusHidden" style="display:none"><span id="loginLabel" role="region" aria-label="Log in / log out"><a id="logoutLink" href="javascript:;" >Log Out</a></span></li><li class="shareboxLi" id="headerSharebox" ><a class="lotusBannerBtn" href="javascript:;" onclick="dojo.stopEvent(event);dojo.require('net.jazz.ajax.xdloader');net.jazz.ajax.xdloader.load_async('com.ibm.social.sharebox.dialog', dojo.hitch(this, function() {com.ibm.social.sharebox.show();}));" role="button">Share</a></li><li id="languageSelectorText" style="display: none;"></li><li id="lotusBannerMail" class=" " style="display: none;" external-content-style="height:auto"><a onmouseover="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                       (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateInbox(this, event);"
                          onclick="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                       (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateInbox(this, event);"
                          onfocus="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                       (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateInbox(this, event);" 
                          role="button" 
                          _lconn_menuid="lconnheadermenu-mail"
                          aria-label="Mail" 
                          src="/homepage/static/20160314.102606!en/nav/templates/menu/mail.jsp"
                          href="javascript:;"
                          errormessage="Mail cannot be reached at this time"><img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="lconnSprite lconnSprite-iconMailWhite16" /><span class="lotusAltText">Mail</span><span class="os-site-mail-notify"></span></a></li><li id="lotusBannerCalendar" class=" " style="display: none;" external-content-style="height:auto"><a onmouseover="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                      (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateCalendar(this, event);" 
                          onclick="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                      (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateCalendar(this, event);" 
                          onfocus="dojo.require('com.ibm.lconn.socialmail.gadget.NavigationHandler');
                                      (new com.ibm.lconn.socialmail.gadget.NavigationHandler()).navigateCalendar(this, event);" 
                          role="button" 
                          _lconn_menuid="lconnheadermenu-calendar"
                          aria-label="Calendar" 
                          src="/homepage/static/20160314.102606!en/nav/templates/menu/calendar.jsp"
                          href="javascript:;"
                          errormessage="Calendar cannot be reached at this time"><img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="iconsComponentsWhite16 iconsComponentsWhite16-CalendarWhite16" /><span class="lotusAltText">Calendar</span></a></li><li id="headerHelpLi" ><a role="button" aria-label="Open help window" href="javascript:;" id="headerHelpLink"><img role="presentation" alt="" src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" class="iconsOther16 iconsOther16-bannerHelpNormal16" /><span class="lotusAltText">?</span></a></li><li><span class="lotusBranding"><img src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606" alt="IBM" class="lotusIBMLogo" /><span class="lotusAltText">IBM</span></span></li></ul>
      <div class="lotusClear"><!-- IE --></div></div></div>
</div><script type="text/javascript">dojo.require("lconn.core.auth");
if(typeof lconn.homepage.global.isAuthenticated != 'undefined'){
lconn.core.auth.setAuthCheck(lconn.homepage.global.isAuthenticated);
}
</script> 
<script language="Javascript" type="text/javascript">var headerUserName=document.getElementById('headerUserName');
if (headerUserName) {
var welcomeUserText=document.getElementById('headerUserText');
if (welcomeUserText != null) {
welcomeUserText.style.display='inline';
}
}
var headerHelpLink=document.getElementById('headerHelpLink');
if(headerHelpLink != null) {
dojo.connect(headerHelpLink, "onclick", function(e) {
dojo.stopEvent(e);
openHelpWindow();
});
}
</script><script type="text/javascript">dojo.addOnLoad(function() {
/* The logout action is set up in the addOnLoad function so we are guaranteed the
authentication JS objects are available. */
var logoutLink=document.getElementById('logoutLink');
if (logoutLink != null) {
logoutLink.onclick=function() {
var authenticated=lconn.core.auth.isAuthenticated();
if (authenticated) {
lconn.core.auth.logout();
} else {
lconn.core.auth.login();
}
return false;
};
}
})
</script>
<div class="lotusTitleBar2"><div class="lotusWrapper"><div class="lotusInner" role="complementary" aria-label="Home"> 
 
 
 
 
 
<div id="hpUserPhoto" class="titleBarBody" role="region" aria-labelledby="semtagmenu"></div><h2 class="lotusHeading"><img src='https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif?etag=20160314.102606'
alt="" class="lotusIcon iconsComponentsBlue24 iconsComponentsBlue24-HomeBlue24"><span class="lotusText lconnHomepageTitle">Home</span></h2><script>dojo.require("com.ibm.lconn.layout.people");
var person={
name: "Mikkel Flindt Heisterberg",
userid: "1FCAA008-88CE-8447-C125-734C0035C155"
};
var img=com.ibm.lconn.layout.people.createImage(person, 106, true);
if (img != null){
var subImg=img.firstChild;
dojo.attr(subImg, {id: "hpUserPhotoImg"});
dojo.addClass(subImg, "profilePicture");
dojo.attr(subImg, {title: img.title});
dojo.place(img, "hpUserPhoto");
}
</script>
 
<script type="text/javascript" >var lconn_core_thirdPartySearchEngines=[]</script> 
 
 
 
 
 
 
<script type="text/javascript">dojo.require("lconn.core.TextBox");
dojo.require("lconn.core.SearchBar");
dojo.require("lconn.core.config.features");
(function(has) {
if (!has("search-history-view-ui")) {
dojo.addOnLoad(function(){
var searchNode=dojo.byId("searchNode");
var searchBar=new lconn.core.SearchBar({
globalOptions: [
{label: "Status Updates", feature: "status_updates"}
,
{label: "Activities", feature: "activities"}
,
{label: "Blogs", feature: "blogs"}
,
{label: "Bookmarks", feature: "dogear"}
,
{label: "Communities", feature: "communities"}
,
{label: "Files", feature: "files"}
,
{label: "Forums", feature: "forums"}
,
{label: "Profiles", feature: "profiles"}
,
{label: "Wikis", feature: "wikis"}
],
searchContextPath: "https://inside.intravision.dk/search",
lblSearch: "Search",
lblSelectScope: "Refine search options",
lblAllConnections: "All Connections",
lblAdvanced: "Advanced",
onSubmit: function(){return true;},
thirdPartySearchEngines: lconn_core_thirdPartySearchEngines
}, searchNode);
searchBar.showDefaultOption=function(){
if ((this.globalOptions != null) && (this.globalOptions.length > 0)){
this.selectOption(this.globalOptions[0], false);
}
}
searchBar.showDefaultOption();
});
}
}(lconn.core.config.features));
</script><div id="searchNode"></div>
</div></div></div> 
 
<script type="text/javascript">window.activityStreamConfig={};
window.activityStreamConfig=com.ibm.social.as.config.ActivityStreamConfigProcessor.processConfig(window.activityStreamConfig);
window.activityStreamConfig.isProcessed=true;
</script>
</div> 
 
 
 
 
 
 
<div id="lotusMain" class="lotusMain" role="main"><span style="position:absolute;"><a name="mainContent" id="maincontent">&nbsp;</a></span><div id="lotusColRight" class="lotusColRight"><div class="lotusSection lotusFirst" role="region" aria-labelledby="findMoreAbout"><h2 id="findMoreAbout">Find out more</h2><div class="lotusSectionBody"><div class="lotusChunk"><ul class="lotusList"><li><a id="helpLinkInAbout" onclick="javascript:openHelpWindow(); return false;" href="https://inside.intravision.dk/help/topic/com.ibm.lotus.connections.homepage.help/hframe.html" title="Home Page help">Help</a></li></ul></div></div></div> 
 
<div class="lotusInfoBox" role="complementary" aria-labelledby="tipsAbout"><h3><span id="tipsAbout" class="left">Tips</span></h3><p>New to IBM Connections? Select the Getting Started view and get to know the different applications in a few easy steps. </p><p>If you are interested in specific tags, why not follow them so that you can get the latest updates for those tags straight from the News Feed.&nbsp;
<a href="https://inside.intravision.dk/help/topic/com.ibm.lotus.connections.homepage.help/t_hp_follow_tags.html" aria-label="More about following tags" onClick="javascript:openHelpWindow('t_hp_follow_tags.html'); return false;">Find out more</a> </p><p>Get suggestions for people and content that might interest you from the Do You Know and Recommendations widgets. </p></div></div> 
<div id="lotusContent" class="lotusContent"><div class="lotusAboutBox"><img src="https://inside.intravision.dk/connections/resources/web/com.ibm.lconn.core.styles.oneui3/images/blank.gif" alt="Home Page logo"
class="iconsComponentsWhite128 iconsComponentsWhite128-HomeWhite128"><div class="lotusAboutText"><h1>Home Page</h1><h3>Why use the Home page?</h3><p>Stay current by accessing the information you need when you need it from a centralized workspace. Browse the latest updates from across IBM Connections, find out what's happening with the people and content you are following, and stay on top of your to-do list.</p></div> 
</div> 
<div class="lotusContentColOne"><h2>Need help as a new user?</h2><p>Use the Getting Started view to help you get started with some basic tasks. Follow the steps to get a quick-and-easy introduction to some key features in IBM Connections. Fill out your profile to help people get to know you better. Discover what tags are and how they are used. Find out how to share information and collaborate using the different features.</p><a href="/homepage/web/gettingStarted/" aria-label="Getting Started" >Find out more</a><h2>Find the updates that are relevant to you  </h2><p>Use the different Updates views to catch up on the latest news from across the features. You can filter the updates by type, making it easy for you to focus on the stories that you care about most. Find out who has responded to content created by you. Save important updates so that you can return to them later. Use the Events widget to keep track of upcoming events that you are attending or following. You can indicate things that you like, or repost to share information with the people who are following you. </p><a href="https://inside.intravision.dk/help/topic/com.ibm.lotus.connections.homepage.help/t_hp_use_updates_tab.html" aria-label="Working with latest updates" onClick="javascript:openHelpWindow('t_hp_use_updates_tab.html'); return false;">Find out more</a></div><div class="lotusContentColTwo"><h2>Get the word out about what you're doing</h2><p>Posting a status message is a quick and easy way to share information with your work colleagues. You can attach files to your status updates to provide additional information or use hashtags to tag your updates and make them easier for other users to find. Select Status Updates to tune in to updates from people in your network and people that you are following. </p><a href="https://inside.intravision.dk/help/topic/com.ibm.lotus.connections.homepage.help/t_hp_update_status.html" aria-label="Updating status information" onClick="javascript:openHelpWindow('t_hp_update_status.html'); return false;">Find out more</a><h2>Find new and interesting content</h2><p>Select the Discover view when you want to browse or search for updates that might be of interest. Find blogs that you want to follow or communities that you want to join. Review the latest suggestions from the Recommendations widget to find content that is relevant to your interests and expertise. </p><a href="https://inside.intravision.dk/help/topic/com.ibm.lotus.connections.homepage.help/t_hp_using_recommended_items_widget.html" aria-label="How to find new content" onClick="javascript:openHelpWindow('t_hp_using_recommended_items_widget.html'); return false;">Find out more</a></div> 
</div> 
</div>
 
 
 


 
 
 
 
 
<div id="lotusFooter" class="lotusFooter" role="contentinfo"> 
<ul><li><a href="https://inside.intravision.dk/homepage/">Home</a></li><li><a href="javascript:;" onclick="javascript:openHelpWindow(); return false;" class="">Help</a></li><li><a href="http://www-10.lotus.com/ldd/lcforum.nsf">IBM Support Forums</a></li> <li><a href="/homepage/web/toolsHomepage.jsp" class="">Bookmarking Tools</a></li><li id="lotusBannerFooterMetrics" style="display:none"><a class="lotusMetricsReaderLink" href="https://inside.intravision.dk/metrics/">Server Metrics</a></li><li id="lconnFooterMobile" class="lotusHidden"><a id="lconnMobileRedirectLink" href="javascript:;">Mobile UI</a></li><li><a href="/homepage/web/jsp/about.jsp" class="">About</a></li><li><a href="http://www-306.ibm.com/software/lotus/products/connections/">IBM Connections on ibm.com</a></li><li><a href="http://www.lotus.com/ldd/doc/cct/nextgen.nsf/feedback_choice?OpenForm&amp;Context=footer+ventura+NoTitle+4.5">Submit Feedback</a></li></ul><script type="text/javascript">
(function(){
   function loadConnectionsLanguageSelector() {
      try {
         dojo.require("lconn.core.header");
         lconn.core.header.enableLanguageSelector("languageSelectorText", {"da":"Dansk","en":"English","de":"Deutsch","ja":"\u65e5\u672c\u8a9e","zh":"\u4e2d\u6587 (\u200f\u7b80\u4f53)","fr":"Fran\u00e7ais","ar":"\u200f\u0627\u0644\u0639\u0631\u0628\u064a\u0629\u200f"},
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
<table cellspacing="0" role="presentation" class="lotusLegal"><tbody><tr><td><div aria-label="IBM" class="lotusIBMLogo"> </div><span class="lotusAltText">IBM</span></td><td class="lotusLicense">Licensed Materials - Property of IBM, 5724-S68 © Copyright IBM Corporation 2007, 2015. All Rights Reserved. IBM, the IBM logo, ibm.com and Lotus are trademarks of IBM Corporation in the United States, other countries, or both. Java and all Java-based trademarks are trademarks of Sun Microsystems, Inc. in the United States, other countries, or both. Other company, product, or service names may be trademarks or service marks of others.  A current list of IBM trademarks is available on the Web at www.ibm.com/legal/copytrade.shtml. (http://www.ibm.com/legal/copytrade.shtml.)  U.S. Government Users Restricted Rights:  Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.  This Program is licensed under the terms of the license agreement accompanying the Program.  This license agreement may be either located in a Program directory folder or library identified as "License" or "Non IBM License", if applicable, or provided as a printed license agreement. Please read this agreement carefully before using the Program. By using the Program, you agree to these terms.</td><td><img src="https://inside.intravision.dk/connections/resources/web/com.ibm.oneui3.styles/imageLibrary/Branding/Logos/javaCompatibleLogoWhite.png?etag=20160314.102606" alt="Java Compatible" /><span class="lotusAltText">Java Compatible</span></td></tr><tr><td></td><td class="lotusBuild">Release v5.5.0.0 build IC5.5_Integration_20151204-1501</td><td></td></tr></tbody></table>
</div></body></html>

