-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jmh_pew_page_excerpt_length', 'jmh_pew_page_id', 'jmh_pew_link_title', 'jmh_pew_append_link', 'jmh_pew_link_label');

