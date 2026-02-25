-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sh-cd-hash', 'sh-cd-edit-permissions', 'sh-cd-shortcode-db-value-by-id-enabled', 'sh-cd-option-default-editor', 'sh-cd-option-tool-tips-enabled', 'sh-cd-version-number-2021', 'sh-cd-license-valid', '_yeken_shortcode_variables_update_key_last_dismissed', '_yeken_shortcode_variables_latest_premium_version', '_yeken_shortcode_variables_update', 'yeken_api_prices');

