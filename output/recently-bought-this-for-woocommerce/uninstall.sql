-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_bought_settings_pnumber', 'recently_bought_settings_text', 'recently_bought_settings_randomize', 'recently_bought_settings_corner', 'recently_bought_settings_slide_in_delay');

