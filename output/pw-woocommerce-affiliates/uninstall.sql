-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'pw_affiliates_default_commission', 'pw_affiliates_commission_before_tax', 'pw_affiliates_program_name', 'pwwa_url_fields', 'pwwa_affiliate_endpoint', 'pw_affiliates_use_builtin_jquery_styles', 'pw_affiliates_cookie_days', 'pw_affiliates_show_code_in_cart', 'pw_affiliates_show_code_in_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pw_affiliates_commission');
DELETE FROM wp_usermeta WHERE meta_key IN ('pw_affiliates_commission');
DELETE FROM wp_termmeta WHERE meta_key IN ('pw_affiliates_commission');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pw_affiliates_commission');

