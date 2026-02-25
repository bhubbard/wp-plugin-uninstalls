-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('askaiwp_setting', 'askaiwp_gemini_models');

