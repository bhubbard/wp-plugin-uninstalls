-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hebrewdate_date_order', 'hebrewdate_spelling', 'hebrewdate_correct_sunset', 'hebrewdate_latitude', 'hebrewdate_longitude', 'hebrewdate_latin_display', 'hebrewdate_use_quotes', 'hebrewdate_display_full', 'hebrewdate_display_thousands');

