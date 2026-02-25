-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppf_active_plugins', 'wppf_cache_test', 'wppf_options', 'pf_animal_types', 'pf_access_token', 'vp_fontawesome_icons');
DELETE FROM wp_options WHERE option_name LIKE 'pf_animal_breeds_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

