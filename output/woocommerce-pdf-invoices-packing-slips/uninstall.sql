-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bacs_accounts', 'wpo_wcpdf_review_notice_dismissed', 'wpo_wcpdf_review_notice_shown', 'wpo_wcpdf_install_notice_dismissed', 'wpo_wcpdf_documents_settings_invoice', 'wpo_wcpdf_settings_debug', 'german_market_product_images_in_order', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display', 'wpo_wcpdf_settings_general', 'wpo_wcpdf_general_settings', 'wpo_wcpdf_template_settings', 'wpo_wcpdf_next_invoice_number', 'wpo_wcpdf_debug_settings', 'ubl_wc_general', 'wpo_wcpdf_documents_settings_invoice_ubl', 'ubl_wc_taxes', 'wpo_wcpdf_settings_ubl_taxes', 'wpo_wcpdf_dismiss_shop_address_notice', 'wpo_ips_edi_tax_settings', 'wpo_ips_edi_settings', 'wpo_wcpdf_no_dir_error', 'wpo_wcpdf_random_string', 'wpo_wcpdf_dismiss_requirements_notice', 'wpocore_settings', 'wpo_wcpdf_hide_attachments_hint', 'wpo_wcpdf_extensions_license_cache', 'wpo_wcpdf_installed_template_paths', 'woocommerce_weight_unit', 'wpo_wcpdf_hide_promo_ad', 'wpo_wcpdf_hide_extensions_ad', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_country', 'woocommerce_store_state', 'woocommerce_store_city', 'woocommerce_store_postcode', 'active_sitewide_plugins', 'wpo_wcpdf_hide_nginx_notice', 'wpo_wcpdf_hide_mailpoet_notice', 'wpo_wcpdf_hide_rtl_notice', 'wpo_wcpdf_unstable_version_state', 'wpo_wcpdf_new_install', 'wpo_wcpdf_subfolder_fonts_has_files', 'wpo_wcpdf_flush_rewrite_rules', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpo_wcpdf_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpo_wcpdf_documents_settings_%';
DELETE FROM wp_options WHERE option_name LIKE '%::last_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('peppol_endpoint_id', 'peppol_endpoint_eas', 'dismissed_wp_pointers', 'wpo_ips_checkout_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('peppol_endpoint_id', 'peppol_endpoint_eas', 'dismissed_wp_pointers', 'wpo_ips_checkout_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('peppol_endpoint_id', 'peppol_endpoint_eas', 'dismissed_wp_pointers', 'wpo_ips_checkout_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('peppol_endpoint_id', 'peppol_endpoint_eas', 'dismissed_wp_pointers', 'wpo_ips_checkout_field');

