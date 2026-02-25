-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dealrelations_rewrite_flushed', 'dealrelations_listings_settings', 'dealrelations_listings_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_css_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_css_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_css_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_css_file');

