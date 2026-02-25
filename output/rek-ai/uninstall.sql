-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rekai_is_enabled', 'rekai_embed_code', 'rekai_autocomplete_mode', 'rekai_autocomplete_automatic_selector', 'rekai_autocomplete_usecurrentlang', 'rekai_autocomplete_nrofhits', 'rekai_autocomplete_navigate_on_click', 'rekai_test_mode', 'rekai_use_mock_data', 'rekai_project_id', 'rekai_secret_key', 'rekai_consent_mode');

