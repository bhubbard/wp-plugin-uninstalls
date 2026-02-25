-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wckm_pattern', 'wckm_charset', 'wckm_validate_key_page_id', 'wckm_installed', 'wckm_software_license', 'wckm_allow_duplicate_keys', 'wckm_enable_my_account_keys_page', 'wckm_my_account_keys_columns', 'wckm_my_enable_account_activations', 'wckm_my_account_allow_deactivation', 'wckm_automatic_delivery', 'wckm_hide_keys_from_processing_email', 'wckm_hide_keys_from_completed_email', 'wckm_disable_oos_keys', 'wckm_hide_order_details', 'wckm_my_account_keys_page', 'wckm_enable_software_api', 'wckm_manage_stock', 'woocommerce_manage_stock', 'wckm_duplicate_keys', 'wckm_enable_rest_api', 'wckm_key_source', 'wckm_valid_for', 'wckm_activation_limit', 'wckm_recycle_keys', 'wckm_proc_key_delivery', 'woocommerce_email_footer_text', 'wckm_my_account_allow_activation', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wckm_keyed', '_wckm_key_source', '_wckm_generator_id', '_wckm_is_sequential', '_wckm_delivery_qty', '_wckm_enable_software', '_wckm_software_version', '_wckm_software_min_php_version', '_wckm_software_min_wp_version', '_wckm_software_file', '_wckm_software_changelog', '_wckm_sequential_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wckm_keyed', '_wckm_key_source', '_wckm_generator_id', '_wckm_is_sequential', '_wckm_delivery_qty', '_wckm_enable_software', '_wckm_software_version', '_wckm_software_min_php_version', '_wckm_software_min_wp_version', '_wckm_software_file', '_wckm_software_changelog', '_wckm_sequential_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wckm_keyed', '_wckm_key_source', '_wckm_generator_id', '_wckm_is_sequential', '_wckm_delivery_qty', '_wckm_enable_software', '_wckm_software_version', '_wckm_software_min_php_version', '_wckm_software_min_wp_version', '_wckm_software_file', '_wckm_software_changelog', '_wckm_sequential_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wckm_keyed', '_wckm_key_source', '_wckm_generator_id', '_wckm_is_sequential', '_wckm_delivery_qty', '_wckm_enable_software', '_wckm_software_version', '_wckm_software_min_php_version', '_wckm_software_min_wp_version', '_wckm_software_file', '_wckm_software_changelog', '_wckm_sequential_position');

