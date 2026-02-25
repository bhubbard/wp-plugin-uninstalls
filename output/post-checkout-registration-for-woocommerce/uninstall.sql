-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_post_checkout_registration', 'wc_pcr_auto_linking', 'wc_pcr_quick_form', 'wc_pcr_existing_account_msg', 'wc_pcr_new_account_msg', 'woocommerce_registration_generate_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'paying_customer');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'paying_customer');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'paying_customer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'paying_customer');

