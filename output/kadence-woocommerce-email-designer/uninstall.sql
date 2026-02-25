-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kt_woomail', 'woocommerce_email_background_color', 'woocommerce_email_base_color', 'woocommerce_email_footer_text', 'active_sitewide_plugins', 'woocommerce_registration_generate_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');

