-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssi_debug_mode', 'ssi_debug_app_secret', 'ssi_debug_widget_name', 'ssi_app_secret', 'ssi_widget_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssi_uid');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssi_uid');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssi_uid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssi_uid');

