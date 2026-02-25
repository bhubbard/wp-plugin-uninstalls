-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_GFGAET_UA_settings', 'gravityformsaddon_gravity-forms-event-tracking_settings');

