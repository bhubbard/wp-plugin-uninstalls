<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hajimecreate_text_weaver_environment_settings');
delete_site_option('hajimecreate_text_weaver_environment_settings');
delete_option('hajimecreate_text_weaver_config');
delete_site_option('hajimecreate_text_weaver_config');
delete_option('hajimecreate_text_weaver_api_url');
delete_site_option('hajimecreate_text_weaver_api_url');
delete_option('hajimecreate_text_weaver_default_cache_time');
delete_site_option('hajimecreate_text_weaver_default_cache_time');
delete_option('_transient_keys');
delete_site_option('_transient_keys');
delete_option('hajimecreate_text_weaver_api_key');
delete_site_option('hajimecreate_text_weaver_api_key');
delete_option('hajimecreate_text_weaver_logs');
delete_site_option('hajimecreate_text_weaver_logs');

