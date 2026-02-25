-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kn_malay_chat_version', 'kn_malay_chat_cboxheight', 'kn_malay_chat_cboxwidth', 'kn_malay_chat_cboxid', 'kn_malay_chat_securitytag', 'kn_malay_chat_privatekey', 'kn_malay_chat_premium');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_cboxheight';
DELETE FROM wp_options WHERE option_name LIKE '%_cboxwidth';
DELETE FROM wp_options WHERE option_name LIKE '%_cboxid';
DELETE FROM wp_options WHERE option_name LIKE '%_securitytag';
DELETE FROM wp_options WHERE option_name LIKE '%_privatekey';
DELETE FROM wp_options WHERE option_name LIKE '%_premium';

