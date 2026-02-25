-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srpt_options', 'srpt_version', 'srpt_futurehours');

