-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('planfy_just_activated', 'planfy_code', 'planfy_account_url');

