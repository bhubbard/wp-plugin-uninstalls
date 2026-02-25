-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_api_key', 'sm_list_id', 'sm_single_opt_in');

