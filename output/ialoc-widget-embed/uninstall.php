<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ialoc_locale');
delete_site_option('ialoc_locale');
delete_option('ialoc_embed_mode');
delete_site_option('ialoc_embed_mode');
delete_option('ialoc_id');
delete_site_option('ialoc_id');
delete_option('ialoc_extra_config');
delete_site_option('ialoc_extra_config');
delete_option('ialoc_callback_type');
delete_site_option('ialoc_callback_type');
delete_option('ialoc_thank_you_url');
delete_site_option('ialoc_thank_you_url');
delete_option('ialoc_custom_js');
delete_site_option('ialoc_custom_js');

