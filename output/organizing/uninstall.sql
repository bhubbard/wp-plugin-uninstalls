-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('organizing_settings', 'organizing_need_flush_rewrite', 'organizing_children');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_organizing_listing_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_organizing_listing_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_organizing_listing_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_organizing_listing_image');

