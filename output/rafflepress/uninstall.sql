-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rafflepress_version', 'rafflepress_run_activation', 'rafflepress_settings', 'rafflepress_api_key ', 'rafflepress_per', 'rafflepress_a', 'rafflepress_one_click_upgrade', 'rafflepress_api_token', 'rafflepress_token', 'rafflepress_license_name', 'rafflepress_api_key', 'rafflepress_api_message', 'rafflepress_over_time', 'dashboards_disabled', 'rafflepress_hide_review', 'rafflepress_review', 'rafflepress_log', 'rafflepress_enable_log', 'rafflepress_dismiss_settings_lite_cta', 'rafflepress_initial_version', '_rafflepress_welcome_screen_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rafflepress_creating_giveaway');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rafflepress_creating_giveaway');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rafflepress_creating_giveaway');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rafflepress_creating_giveaway');

