-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('master_blocks_saved_templates', 'master_blocks_global_settings', 'jltmb_blocks_settings', 'jltmb_sheet_promo_data', 'jltmb_sheet_promo_data_hash', 'active_sitewide_plugins', 'jltmb_activation_time', 'master_blocks_templates', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE 'jltmb_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'jltmb-plugin-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'jltmb_master_blocks_rollbacks_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', '_hello_gutenberg_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', '_hello_gutenberg_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', '_hello_gutenberg_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', '_hello_gutenberg_field');

