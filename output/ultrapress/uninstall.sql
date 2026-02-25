-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultrapress_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ultrapress_seo_title', '_ultrapress_meta_description', '_ultrapress_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ultrapress_seo_title', '_ultrapress_meta_description', '_ultrapress_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ultrapress_seo_title', '_ultrapress_meta_description', '_ultrapress_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ultrapress_seo_title', '_ultrapress_meta_description', '_ultrapress_focus_keyword');

