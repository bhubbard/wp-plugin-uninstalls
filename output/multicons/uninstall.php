<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmf-setting');
delete_site_option('mmf-setting');
delete_option('mmf-setting-admin');
delete_site_option('mmf-setting-admin');
delete_option('mmf-setting-ios');
delete_site_option('mmf-setting-ios');
delete_option('mmf-setting-iosflat');
delete_site_option('mmf-setting-iosflat');
delete_option('mmf-setting-androidhirez');
delete_site_option('mmf-setting-androidhirez');
delete_option('mmf-setting-androidreg');
delete_site_option('mmf-setting-androidreg');

