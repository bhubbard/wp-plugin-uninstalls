-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doublethedonation_api_host', 'doublethedonation_public_key', 'doublethedonation_cache_version', 'doublethedonation_setup_step');

