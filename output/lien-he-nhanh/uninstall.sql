-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ld_phone', 'ld_zalo', 'ld_facebook', 'ld_messenger');

