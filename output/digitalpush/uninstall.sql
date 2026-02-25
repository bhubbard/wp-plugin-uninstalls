-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgp_autosend', 'dgp_api', 'dgp_error', 'dgp_key', 'dgp_delay', 'dgp_nativerequest', 'dgp_inpageads', 'dgp_type', 'dgp_theme', 'dgp_message', 'dgp_title', 'dgp_allowbutton', 'dgp_denybutton', 'dgp_bgimage');

