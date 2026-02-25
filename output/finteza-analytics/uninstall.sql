-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('finteza_settings', 'finteza_register', 'vpt_flush');

