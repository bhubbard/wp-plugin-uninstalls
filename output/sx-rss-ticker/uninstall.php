<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sxrssticker_setting_s1');
delete_site_option('sxrssticker_setting_s1');
delete_option('sxrssticker_setting_s2');
delete_site_option('sxrssticker_setting_s2');
delete_option('sxrssticker_setting_s3');
delete_site_option('sxrssticker_setting_s3');
delete_option('sxrssticker_setting_s4');
delete_site_option('sxrssticker_setting_s4');

