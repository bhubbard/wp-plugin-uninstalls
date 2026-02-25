-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('first_field', 'second_field', 'third_field', 'fourth_field', 'fifth_field', 'sixth_field', 'seventh_field', 'eighth_field', 'ninth_field', 'tenth_field', 'eleventh_field', 'twelfth_field', 'thirteenth_field', 'fourteenth_field', 'fifteenth_field', 'sixteenth_field', 'seventeenth_field', 'eighteenth_field', 'nineteenth_field', 'twentieth_field', 'twentyoneth_field', 'twentysecond_field');

