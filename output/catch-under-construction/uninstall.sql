-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catch_under_construction_options', 'ctp_options', '_catch_coming_soon_screen_activation_redirect');

