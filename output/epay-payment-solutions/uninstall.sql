-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_page_id', 'woocommerce_epay_dk_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ageverification', 'ep_category_ageverification');
DELETE FROM wp_usermeta WHERE meta_key IN ('ageverification', 'ep_category_ageverification');
DELETE FROM wp_termmeta WHERE meta_key IN ('ageverification', 'ep_category_ageverification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ageverification', 'ep_category_ageverification');

