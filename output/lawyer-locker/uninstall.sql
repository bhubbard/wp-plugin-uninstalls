-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lawyer_locker_internal_encryption_key', 'lawyer_locker_enable_lockbox', 'lawyer_locker_encryption_key_location', 'lawyer_locker_privilege_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lawyer_locker_id', '_lawyer_locker_password', '_lawyer_locker_expiration', '_lawyer_locker_custom_privilege_footer', '_lawyer_locker_client_name', '_lawyer_locker_internal_notes', '_lawyer_locker_encryption_key', '_lawyer_locker_expiration_date', '_lawyer_locker_encrypted_messages', '_lawyer_locker_read_lockers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lawyer_locker_id', '_lawyer_locker_password', '_lawyer_locker_expiration', '_lawyer_locker_custom_privilege_footer', '_lawyer_locker_client_name', '_lawyer_locker_internal_notes', '_lawyer_locker_encryption_key', '_lawyer_locker_expiration_date', '_lawyer_locker_encrypted_messages', '_lawyer_locker_read_lockers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lawyer_locker_id', '_lawyer_locker_password', '_lawyer_locker_expiration', '_lawyer_locker_custom_privilege_footer', '_lawyer_locker_client_name', '_lawyer_locker_internal_notes', '_lawyer_locker_encryption_key', '_lawyer_locker_expiration_date', '_lawyer_locker_encrypted_messages', '_lawyer_locker_read_lockers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lawyer_locker_id', '_lawyer_locker_password', '_lawyer_locker_expiration', '_lawyer_locker_custom_privilege_footer', '_lawyer_locker_client_name', '_lawyer_locker_internal_notes', '_lawyer_locker_encryption_key', '_lawyer_locker_expiration_date', '_lawyer_locker_encrypted_messages', '_lawyer_locker_read_lockers');

