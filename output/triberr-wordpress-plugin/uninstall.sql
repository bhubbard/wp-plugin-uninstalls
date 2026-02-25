-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('triberr_apikey', 'triberr_message', 'triberr_comments_width', 'triberr_comments_bg_color', 'triberr_comments_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_triberr_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_triberr_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_triberr_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_triberr_id');

