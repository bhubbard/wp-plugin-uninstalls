-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aacgfe-installDate', 'aacgfe-ratingDiv', 'aacgfe_initial_save_version', 'aacgfe-install-date', 'aacgfe-version', 'aacgfe-plugin-type', 'aacgfe_plugin_redirect', 'AACGFE_prompt_data');
DELETE FROM wp_options WHERE option_name LIKE '%_remove_notice';

