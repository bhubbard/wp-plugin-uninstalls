<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frenglish_cache_salt');
delete_site_option('frenglish_cache_salt');
delete_option('frenglish_server_side_translations');
delete_site_option('frenglish_server_side_translations');
delete_option('frenglish_api_key');
delete_site_option('frenglish_api_key');
delete_option('frenglish_supported_languages');
delete_site_option('frenglish_supported_languages');
delete_option('frenglish_origin_language');
delete_site_option('frenglish_origin_language');
delete_option('frenglish_config_fetched_at');
delete_site_option('frenglish_config_fetched_at');
delete_option('frenglish_excluded_translation_blocks');
delete_site_option('frenglish_excluded_translation_blocks');
delete_option('frenglish_config_rev');
delete_site_option('frenglish_config_rev');
delete_option('frenglish_cache_keys');
delete_site_option('frenglish_cache_keys');

