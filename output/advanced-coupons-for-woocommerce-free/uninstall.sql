-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_cart', 'acfw_installed_by', 'acfwf_bogo_migrate_coupon_type', 'acfw_bogo_deals_default_values_set', 'acfwf_activation_code_triggered', 'acfwf_feature_counts_initialized', 'woocommerce_enable_signup_and_login_from_checkout', 'pushengage_installed_by', 'uncannyautomator_source', 'storeagent_installed_by', 'wwp_installed_by', 'woocommerce_feature_custom_order_tables_enabled', 'active_sitewide_plugins', 'acfw_option_update_data', 'acfw_slmw_license_key', 'acfw_license_activated', 'woocommerce_email_footer_text', 'woocommerce_email_header_image', 'woocommerce_email_base_color', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flush_rules';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acfwf_hide_free_guide_form', 'first_name', '_elementor_data', 'pushengage_subscriber_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acfwf_hide_free_guide_form', 'first_name', '_elementor_data', 'pushengage_subscriber_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acfwf_hide_free_guide_form', 'first_name', '_elementor_data', 'pushengage_subscriber_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acfwf_hide_free_guide_form', 'first_name', '_elementor_data', 'pushengage_subscriber_ids');

