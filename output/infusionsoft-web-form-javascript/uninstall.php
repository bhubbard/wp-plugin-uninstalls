<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('novaksolutions_wf_setting_shortcode');
delete_site_option('novaksolutions_wf_setting_shortcode');
delete_option('novaksolutions_wf_setting_autoreplace');
delete_site_option('novaksolutions_wf_setting_autoreplace');

