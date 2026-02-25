-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ultimate_popunder_version', '_ultimate_popunder_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_popunder_url', '_popunder_post_type', '_popunder_post_visible', '_popunder_priority');
DELETE FROM wp_usermeta WHERE meta_key IN ('_popunder_url', '_popunder_post_type', '_popunder_post_visible', '_popunder_priority');
DELETE FROM wp_termmeta WHERE meta_key IN ('_popunder_url', '_popunder_post_type', '_popunder_post_visible', '_popunder_priority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_popunder_url', '_popunder_post_type', '_popunder_post_visible', '_popunder_priority');

