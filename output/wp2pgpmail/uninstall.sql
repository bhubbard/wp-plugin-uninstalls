-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2pgpmail_pgpkey_keyid', 'wp2pgpmail_pgpkey_pkey', 'wp2pgpmail_pgpkey_vers', 'wp2pgpmail_pgpkey_pktype', 'wp2pgpmail_pgpkey', 'wp2pgpmail_captcha_field', 'wp2pgpmail_collect_ip', 'wp2pgpmail_pgpkey_user');

