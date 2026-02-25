-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_selector_attachment_id', 'wpbdf-admin-notice-welcome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibility');

