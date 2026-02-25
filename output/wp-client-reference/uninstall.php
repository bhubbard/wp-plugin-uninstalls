<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpclientref_settings');
delete_site_option('wpclientref_settings');
delete_option('_wpclientref_settings_status');
delete_site_option('_wpclientref_settings_status');
delete_option('_wpclientref_prev_post_type');
delete_site_option('_wpclientref_prev_post_type');

