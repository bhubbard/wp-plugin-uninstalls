-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anibu_global_animations', 'anibu_options', 'toast_sta_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('anibu_page_animations');
DELETE FROM wp_usermeta WHERE meta_key IN ('anibu_page_animations');
DELETE FROM wp_termmeta WHERE meta_key IN ('anibu_page_animations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('anibu_page_animations');

