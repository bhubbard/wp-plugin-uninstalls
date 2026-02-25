-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roomlio-pk', 'roomlio_admin_notification', 'roomlio-hmac-key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('roomlio-height', 'roomlio-width', 'roomlio-room-key');
DELETE FROM wp_usermeta WHERE meta_key IN ('roomlio-height', 'roomlio-width', 'roomlio-room-key');
DELETE FROM wp_termmeta WHERE meta_key IN ('roomlio-height', 'roomlio-width', 'roomlio-room-key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('roomlio-height', 'roomlio-width', 'roomlio-room-key');

