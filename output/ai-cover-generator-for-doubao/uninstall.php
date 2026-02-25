<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicg_api_key');
delete_site_option('aicg_api_key');
delete_option('aicg_api_base_url');
delete_site_option('aicg_api_base_url');
delete_option('aicg_text_model');
delete_site_option('aicg_text_model');
delete_option('aicg_image_model');
delete_site_option('aicg_image_model');

