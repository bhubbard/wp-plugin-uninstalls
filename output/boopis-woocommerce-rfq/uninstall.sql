-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boopis_rfq_page_id', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_force_ssl_checkout', 'boopis_rfq_replace_price', 'boopis_rfq_quote_trigger', 'boopis_rfq_tag_trigger_value', 'woocommerce_cart_redirect_after_add', 'woocommerce_email_footer_text', 'woocommerce_email_header_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_boopis_rfq_terms', '_boopis_rfq_expiration_date', '_woocommerce_persistent_quote', '_purchase_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('_boopis_rfq_terms', '_boopis_rfq_expiration_date', '_woocommerce_persistent_quote', '_purchase_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('_boopis_rfq_terms', '_boopis_rfq_expiration_date', '_woocommerce_persistent_quote', '_purchase_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_boopis_rfq_terms', '_boopis_rfq_expiration_date', '_woocommerce_persistent_quote', '_purchase_note');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';

