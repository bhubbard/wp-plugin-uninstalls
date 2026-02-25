-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('style_shfpt', 'home_shfpt', 'frontpage_shfpt', 'archive_shfpt', 'category_shfpt', 'post_shfpt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_slug_value_key', '_position_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_slug_value_key', '_position_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_slug_value_key', '_position_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_slug_value_key', '_position_value_key');

