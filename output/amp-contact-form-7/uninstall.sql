-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ampcf7_install_date', 'ampcf7_ignore_notice');

