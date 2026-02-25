-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('channelize_live_shopping', 'channelize_live_shopping_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'created_by_channelize_live_shopping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'created_by_channelize_live_shopping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'created_by_channelize_live_shopping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'created_by_channelize_live_shopping');

