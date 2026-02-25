-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_GFFBPT_FBP_settings', 'gravityformsaddon_gravity-forms-pixel-tracking_settings');

