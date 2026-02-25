-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moderncart_is_onboarding_complete', 'woocommerce_tax_total_display', 'woocommerce_private_link', 'woocommerce_share_key', 'moderncart_version', 'moderncart_redirect_to_onboarding');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price');

