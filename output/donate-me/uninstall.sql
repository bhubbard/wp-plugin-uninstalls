-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donateme_position', 'donateme_api', 'donateme_recurring', 'donateme_currency', 'donateme_color', 'donateme_textcolor', 'donateme_text');

