-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('realvia_realvia_domena', 'realvia_realvia_key');

