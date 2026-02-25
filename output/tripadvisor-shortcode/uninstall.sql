-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tripadvisor_url', 'tripadvisor_name', 'tripadvisor_id', 'tripadvisor_buff');

