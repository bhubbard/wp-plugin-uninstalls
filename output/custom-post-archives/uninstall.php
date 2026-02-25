<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpa_config_settings');
delete_site_option('cpa_config_settings');
delete_option('custom_post_rewrites');
delete_site_option('custom_post_rewrites');

