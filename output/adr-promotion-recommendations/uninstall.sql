-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adrcdp_publisher', 'adrcdp_publisher_auth');

