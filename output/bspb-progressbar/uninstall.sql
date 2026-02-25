-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bspb_plugin_version', 'bspb_settings', 'bspb_plugin_settings', 'bspb_configuration', 'bspb_plugin_configuration', 'bspb_animation', 'bspb_plugin_animation', 'bspb_plugin_activated_blogs', 'bspb_plugin_licenses', 'setting_type', 'bspb_plugin_addons_feed');

