-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_tags_insert_header', 'easy_tags_header_css', 'easy_tags_fb', 'easy_tags_gtm_head', 'easy_tags_gtm_footer', 'easy_tags_insert_footer');

