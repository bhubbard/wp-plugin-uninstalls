-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egawp_activated_on', 'egawp_select_type', 'egawp_value', 'egawp_deactivated_on');

