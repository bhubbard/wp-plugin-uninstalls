<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rekai_is_enabled');
delete_site_option('rekai_is_enabled');
delete_option('rekai_embed_code');
delete_site_option('rekai_embed_code');
delete_option('rekai_autocomplete_mode');
delete_site_option('rekai_autocomplete_mode');
delete_option('rekai_autocomplete_automatic_selector');
delete_site_option('rekai_autocomplete_automatic_selector');
delete_option('rekai_autocomplete_usecurrentlang');
delete_site_option('rekai_autocomplete_usecurrentlang');
delete_option('rekai_autocomplete_nrofhits');
delete_site_option('rekai_autocomplete_nrofhits');
delete_option('rekai_autocomplete_navigate_on_click');
delete_site_option('rekai_autocomplete_navigate_on_click');
delete_option('rekai_test_mode');
delete_site_option('rekai_test_mode');
delete_option('rekai_use_mock_data');
delete_site_option('rekai_use_mock_data');
delete_option('rekai_project_id');
delete_site_option('rekai_project_id');
delete_option('rekai_secret_key');
delete_site_option('rekai_secret_key');
delete_option('rekai_consent_mode');
delete_site_option('rekai_consent_mode');

