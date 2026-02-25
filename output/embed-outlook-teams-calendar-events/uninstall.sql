-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('motce_admin_email', 'motce_admin_phone', 'application_config', 'mail_config');
DELETE FROM wp_options WHERE option_name LIKE 'motce_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aadObjectId');
DELETE FROM wp_usermeta WHERE meta_key IN ('aadObjectId');
DELETE FROM wp_termmeta WHERE meta_key IN ('aadObjectId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aadObjectId');

