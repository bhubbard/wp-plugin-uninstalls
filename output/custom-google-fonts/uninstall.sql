-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_google_fonts_option1', 'custom_google_fonts_option2', 'custom_google_fonts_option3', 'custom_google_fonts_option4', 'custom_google_fonts_option5', 'custom_google_fonts_option6');

