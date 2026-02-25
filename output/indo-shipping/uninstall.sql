-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpe_ishipp_base_location', 'wpe_ishipp_base_location_code');

