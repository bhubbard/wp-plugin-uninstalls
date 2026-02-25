-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WSAE-v', 'WSAE-type', 'wsae-installDate', 'wsae-alreadyRated');

