-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_chimp_lists_init', 'wp_chimp_lists_db_upgraded', 'wp_chimp_lists_total_items', 'wp_chimp_api_key_status', 'wp_chimp_lists_db_version', 'wp_chimp_settings_mailchimp', 'wp_chimp_default_list', 'wp_chimp_settings_advanced_lists');

