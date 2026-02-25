-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprmenu_options', 'wprmenu_demo_id', 'wpr_optionsframework', 'wpr_live_settings', 'wprm_api_demo_items_list');

