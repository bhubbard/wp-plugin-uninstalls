-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xc_options', 'xc_pro_options', '_xllentech_calendar_activation_redirect');

