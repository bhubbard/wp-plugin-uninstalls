-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eu_vat_guard_hide_registration_fields', 'eu_vat_guard_require_company', 'eu_vat_guard_require_vat', 'eu_vat_guard_require_vies', 'eu_vat_guard_ignore_vies_error', 'eu_vat_guard_enable_block_checkout', 'eu_vat_guard_disable_exemption', 'eu_vat_guard_fixed_prices', 'eu_vat_guard_company_label', 'eu_vat_guard_vat_label', 'eu_vat_guard_exemption_message', 'eu_vat_guard_override_b2b_plugins', 'woocommerce_tax_classes');
DELETE FROM wp_options WHERE option_name LIKE 'eu_vat_guard_admin_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email', 'billing_is_vat_exempt');
DELETE FROM wp_usermeta WHERE meta_key IN ('email', 'billing_is_vat_exempt');
DELETE FROM wp_termmeta WHERE meta_key IN ('email', 'billing_is_vat_exempt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email', 'billing_is_vat_exempt');

