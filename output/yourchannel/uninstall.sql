-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yrc_version', 'yrc_keys', 'yrc_lang_terms', 'yrc_license_key', 'yrc_wrong_version_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_refresh';
DELETE FROM wp_options WHERE option_name LIKE '%_perm';

