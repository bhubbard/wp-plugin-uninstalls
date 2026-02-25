-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modern_check_captch', 'email_radio', 'email_used', 'modern_privatekey', 'modern_publickey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('modern_contact_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('modern_contact_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('modern_contact_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('modern_contact_code');

