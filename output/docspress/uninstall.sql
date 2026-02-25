-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('docspress_settings', 'docspress_setup', 'docspress_current_slug', 'docspress_updated_caps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('positive', 'negative', 'nav_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('positive', 'negative', 'nav_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('positive', 'negative', 'nav_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('positive', 'negative', 'nav_title');

