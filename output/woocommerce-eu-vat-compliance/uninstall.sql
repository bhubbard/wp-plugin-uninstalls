-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_eu_vat_compliance_reporting_override', 'woocommerce_tax_based_on', 'woocommerce_eu_vat_compliance_store_invalid_numbers', 'woocommerce_eu_vat_compliance_exchange_rate_provider', 'woocommerce_eu_vat_compliance_vat_recording_currency', 'woocommerce_eu_vat_compliance_vat_region', 'woocommerce_eu_vat_store_id', 'woocommerce_eu_vat_compliance_forbid_vatable_checkout', 'woocommerce_calc_taxes', 'woocommerce_eu_vat_compliance_tax_classes', 'woocommerce_eu_vat_compliance_pdf_footer_b2c', 'woocommerce_eu_vat_compliance_vat_match', 'woocommerce_currency', 'woocommerce_eu_vat_cart_vat_exempt_above_currency', 'woocommerce_vat_compliance_last_version', 'woocommerce_vat_compliance_geo_locate', 'woocommerce_eu_vat_compliance_same_prices', 'wceuvat_background_tests', 'woocommerce_price_num_decimals', 'wc_uk_vat_hmrc_csrf', 'woocommerce_price_display_suffix', 'woocommerce_default_customer_address', 'woocommerce_vat_compliance_vat_sense_api_key', 'woocommerce_tax_classes', 'wc_euro_vat_rates_by_iso');
DELETE FROM wp_options WHERE option_name LIKE '%_last_updated';
DELETE FROM wp_options WHERE option_name LIKE '%_last_data';

