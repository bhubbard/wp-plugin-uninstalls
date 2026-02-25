-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpxero_search_settings', 'wpxero_search_keep_data_on_uninstall', 'wpxero_search_last_uninstall', 'wpxero_search_version', 'wpxero_search_activation_date', 'wpxero_search_last_deactivation', 'wpxero_search_deactivation_feedback', 'wpxero_search_builder_cache');

