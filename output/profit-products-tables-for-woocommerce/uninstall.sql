-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woot_free_1', 'woot_settings', 'woot_mime_types_association', 'woot_rate_alert', 'woot_db_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'rating');

