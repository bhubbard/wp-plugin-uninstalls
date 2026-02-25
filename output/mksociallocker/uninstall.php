<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mkFacebookAppID');
delete_site_option('mkFacebookAppID');
delete_option('mkFacebookHashtag');
delete_site_option('mkFacebookHashtag');
delete_option('mkTwitterContent');
delete_site_option('mkTwitterContent');
delete_option('mkWarningTextFacebook');
delete_site_option('mkWarningTextFacebook');
delete_option('mkWarningText');
delete_site_option('mkWarningText');
delete_option('mkForLoggedin');
delete_site_option('mkForLoggedin');
delete_option('warningText');
delete_site_option('warningText');
delete_option('warningTextFacebook');
delete_site_option('warningTextFacebook');

