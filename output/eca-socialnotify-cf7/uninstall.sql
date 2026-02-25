-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eca_socialnotify_cf7_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_socialnotify_settings', '_socialnotify_error_logs');
DELETE FROM wp_usermeta WHERE meta_key IN ('_socialnotify_settings', '_socialnotify_error_logs');
DELETE FROM wp_termmeta WHERE meta_key IN ('_socialnotify_settings', '_socialnotify_error_logs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_socialnotify_settings', '_socialnotify_error_logs');

