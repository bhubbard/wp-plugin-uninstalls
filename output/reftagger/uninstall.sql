-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbs_bible_version', 'lbs_libronix', 'lbs_existing_libronix', 'lbs_libronix_color', 'lbs_tooltips', 'lbs_search_comments', 'lbs_nosearch', 'lbs_new_window', 'lbs_libronix_bible_version', 'lbs_convert_hyperlinks', 'lbs_case_insensitive', 'lbs_tag_chapters');

