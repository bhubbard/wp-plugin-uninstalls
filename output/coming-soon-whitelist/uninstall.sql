-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwwoo_whitelisted_ids', 'woocommerce_coming_soon', 'woocommerce_store_pages_only', 'wpwwoo_cached_urls');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpwwoo_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpwwoo_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpwwoo_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpwwoo_dismissed_notices');

