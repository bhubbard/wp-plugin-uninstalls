-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_sortable_order', 'wc_settings_enable_redirect', 'wc_settings_thank_you_page', 'wc_settings_thank_you_type', 'wmprty_enable_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wmprty_products', 'wmprty_page', 'wmprty_prd_opt_data', 'wmprty_status', 'wmprty_custom_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('wmprty_products', 'wmprty_page', 'wmprty_prd_opt_data', 'wmprty_status', 'wmprty_custom_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('wmprty_products', 'wmprty_page', 'wmprty_prd_opt_data', 'wmprty_status', 'wmprty_custom_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wmprty_products', 'wmprty_page', 'wmprty_prd_opt_data', 'wmprty_status', 'wmprty_custom_url');

