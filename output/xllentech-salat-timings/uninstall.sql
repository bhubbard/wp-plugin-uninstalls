-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xllentech_salat_timings_options', 'xllentech_salat_timings_rd_notice_hidden', 'xllentech_salat_timings_first_activate');
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden';

