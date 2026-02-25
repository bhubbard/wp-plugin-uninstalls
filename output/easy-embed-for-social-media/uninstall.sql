-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eefsm_fb_plugin_options', 'eefsm_fb_plugin_options_appearance', 'eefsm_fb_plugin_options_pro');

