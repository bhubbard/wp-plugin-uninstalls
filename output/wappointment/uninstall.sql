-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wappo_plug_activated', 'sidebars_widgets', 'wappointment_installation_time', 'update_plugins');

