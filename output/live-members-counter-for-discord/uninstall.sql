-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlmc_bot_token', 'dlmc_error_logs', 'dlmc_members_count');

