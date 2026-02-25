<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pressidium_cookie_consent_activated');
delete_site_option('pressidium_cookie_consent_activated');
delete_option('pressidium_cookie_consent_settings');
delete_site_option('pressidium_cookie_consent_settings');
delete_option('pressidium_cookie_consent_table_versions');
delete_site_option('pressidium_cookie_consent_table_versions');
delete_option('pressidium_cookie_consent_ai_api_key');
delete_site_option('pressidium_cookie_consent_ai_api_key');

