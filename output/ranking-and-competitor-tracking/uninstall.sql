-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hub_ract_options', 'hub_ract_api', 'hub_ract_data', 'hub_ract_log', 'hub_ract_blink');

