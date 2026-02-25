<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpademoji_setting_opt');
delete_site_option('tpademoji_setting_opt');
delete_option('tpademoji_checkver_stamp');
delete_site_option('tpademoji_checkver_stamp');

