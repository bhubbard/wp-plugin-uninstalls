-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwpcaptcha_lettercount', 'gwpcaptcha_register', 'gwpcaptcha_login', 'gwpcaptcha_lostpassword', 'gwpcaptcha_pluginversion');

