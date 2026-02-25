-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple-rate-time', 'scporder_options', 'scporder_install', 'scporder_notice');

