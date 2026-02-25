-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stackcommerce_wp_author', 'stackcommerce_wp_post_status', 'stackcommerce_wp_categories', 'stackcommerce_wp_tags', 'stackcommerce_wp_featured_image', 'stackcommerce_wp_secret', 'stackcommerce_wp_connection_status', 'stackcommerce_wp_account_id', 'stackcommerce_wp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

