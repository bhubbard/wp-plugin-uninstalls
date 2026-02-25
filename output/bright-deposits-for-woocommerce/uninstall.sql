-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdfwbp_installed', 'woocommerce_tax_display_cart', 'bdfwbp_deposits_settings', 'bdfwbp_deposits_settings[days_before_due]', 'woocommerce_tax_total_display', 'woocommerce_email_footer_text', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', '_redux_content_width', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bdfwbp_enable_deposit', '_bdfwbp_deposits_type', '_bdfwbp_deposits_value', '_bdfwbp_enable_variation_deposit', '_bdfwbp_force_deposit_checked', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bdfwbp_enable_deposit', '_bdfwbp_deposits_type', '_bdfwbp_deposits_value', '_bdfwbp_enable_variation_deposit', '_bdfwbp_force_deposit_checked', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bdfwbp_enable_deposit', '_bdfwbp_deposits_type', '_bdfwbp_deposits_value', '_bdfwbp_enable_variation_deposit', '_bdfwbp_force_deposit_checked', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bdfwbp_enable_deposit', '_bdfwbp_deposits_type', '_bdfwbp_deposits_value', '_bdfwbp_enable_variation_deposit', '_bdfwbp_force_deposit_checked', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

