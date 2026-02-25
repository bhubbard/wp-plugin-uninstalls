-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setmore_booking_page_url', 'languageOption', 'setmore_booking_page_text');

