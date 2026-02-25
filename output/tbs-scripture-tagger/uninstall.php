<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbss_EnableExternalService');
delete_site_option('tbss_EnableExternalService');
delete_option('tbss_LinkMode');
delete_site_option('tbss_LinkMode');
delete_option('tbss_OpenInNewTab');
delete_site_option('tbss_OpenInNewTab');
delete_option('tbss_RespectExistingLinks');
delete_site_option('tbss_RespectExistingLinks');
delete_option('tbss_SkipTags');
delete_site_option('tbss_SkipTags');
delete_option('tbss_SkipClasses');
delete_site_option('tbss_SkipClasses');
delete_option('tbss_ThemeMode');
delete_site_option('tbss_ThemeMode');
delete_option('tbs_EnableExternalService');
delete_site_option('tbs_EnableExternalService');
delete_option('tbs_LinkMode');
delete_site_option('tbs_LinkMode');
delete_option('tbs_OpenInNewTab');
delete_site_option('tbs_OpenInNewTab');
delete_option('tbs_RespectExistingLinks');
delete_site_option('tbs_RespectExistingLinks');
delete_option('tbs_SkipTags');
delete_site_option('tbs_SkipTags');
delete_option('tbs_SkipClasses');
delete_site_option('tbs_SkipClasses');
delete_option('tbs_ThemeMode');
delete_site_option('tbs_ThemeMode');

