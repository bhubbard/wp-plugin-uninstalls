-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssklip_settings_accessibility', 'ssklip_settings_appearance', 'ssklip_settings_closebutton', 'ssklip_settings_customstyles', 'ssklip_settings');

