<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixalia_default_style');
delete_site_option('pixalia_default_style');
delete_option('pixalia_default_aspect_ratio');
delete_site_option('pixalia_default_aspect_ratio');
delete_option('pixalia_api_key');
delete_site_option('pixalia_api_key');
delete_option('pixalia_post_types');
delete_site_option('pixalia_post_types');
delete_option('pixalia_last_check_version');
delete_site_option('pixalia_last_check_version');

