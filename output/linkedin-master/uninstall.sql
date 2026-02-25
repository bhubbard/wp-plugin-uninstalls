-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkedin_master_system_wide', 'linkedin_master_system_wide_language', 'tsm_quote');

