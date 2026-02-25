<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apikey');
delete_site_option('apikey');
delete_option('oaframewidth');
delete_site_option('oaframewidth');
delete_option('oaframeheight');
delete_site_option('oaframeheight');
delete_option('img_oa');
delete_site_option('img_oa');
delete_option('logo');
delete_site_option('logo');
delete_option('fblogin');
delete_site_option('fblogin');
delete_option('oalang');
delete_site_option('oalang');
delete_option('oaltype');
delete_site_option('oaltype');
delete_option('oafstext');
delete_site_option('oafstext');
delete_option('oafshtext');
delete_site_option('oafshtext');
delete_option('oafsctext');
delete_site_option('oafsctext');
delete_option('oaalign');
delete_site_option('oaalign');
delete_option('oaalignb');
delete_site_option('oaalignb');

