-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seed_cl_customizer_settings', 'seed_cl_settings_1', 'seed_cl_settings_2', 'seed_cl_settings_4', 'seed_cl_settings_content', '_seed_cl_welcome_screen_activation_redirect');

