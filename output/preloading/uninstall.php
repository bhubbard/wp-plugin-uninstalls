<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pre_loading_config');
delete_site_option('pre_loading_config');
delete_option('pre_loading_options');
delete_site_option('pre_loading_options');
delete_option('pre_loading_options_preview');
delete_site_option('pre_loading_options_preview');

