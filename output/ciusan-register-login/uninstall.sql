-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ciusan_register_login', 'ciusan_register_login_option', 'name');

