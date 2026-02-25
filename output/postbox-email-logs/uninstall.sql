-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbeml_postbox_install_date', 'pbeml_postbox_ignore_notice');

