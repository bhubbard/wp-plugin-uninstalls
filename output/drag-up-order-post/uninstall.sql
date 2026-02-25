-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scporder_install', 'scporder_notice', 'dupo_install', 'scporder_options');

