<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trymylook_api_key');
delete_site_option('trymylook_api_key');
delete_option('trymylook_button_text');
delete_site_option('trymylook_button_text');
delete_option('trymylook_generate_button_text');
delete_site_option('trymylook_generate_button_text');
delete_option('trymylook_enable_download');
delete_site_option('trymylook_enable_download');

