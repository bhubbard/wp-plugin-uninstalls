-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedvitals_rum_site_id', 'speedvitals_rum_script_position', 'speedvitals_rum_script_loading');

