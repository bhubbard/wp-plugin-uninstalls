-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('httpsrdrctn_options', 'ehssl_configs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('id', 'label', 'issuer', 'issued_on', 'expires_on', 'expiry_notification_email_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('id', 'label', 'issuer', 'issued_on', 'expires_on', 'expiry_notification_email_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('id', 'label', 'issuer', 'issued_on', 'expires_on', 'expiry_notification_email_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('id', 'label', 'issuer', 'issued_on', 'expires_on', 'expiry_notification_email_sent');

