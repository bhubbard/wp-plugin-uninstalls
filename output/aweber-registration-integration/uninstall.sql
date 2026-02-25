-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awr_installed', 'awr_form_id', 'awr_list_name', 'awr_disabled', 'awr_opt_in', 'awr_unit_name');

