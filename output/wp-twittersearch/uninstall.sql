-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptwittersearch_limit', 'wptwittersearch_terms', 'wptwittersearch_phrase', 'wptwittersearch_nots', 'wptwittersearch_author', 'wptwittersearch_avatar', 'wptwittersearch_date', 'wptwittersearch_dateformat', 'wptwittersearch_lang', 'wptwittersearch_name', 'wptwittersearch_linklove');

