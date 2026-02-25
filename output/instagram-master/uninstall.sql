-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instagram_master_system_wide', 'instagram_master_system_wide_username', 'tsm_quote');

