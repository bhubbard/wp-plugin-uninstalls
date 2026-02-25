-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eihe_dismiss', 'eihe_upgraded', 'eihe-top-notice');

