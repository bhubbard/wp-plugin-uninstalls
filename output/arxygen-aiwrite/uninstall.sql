-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arxygen_aiwrite_private_key', 'arxygen_aiwrite_advanced_logging', 'arxygen_aiwrite_admin_email', 'arxygen_aiwrite_activate_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('menu_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('menu_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('menu_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('menu_label');

