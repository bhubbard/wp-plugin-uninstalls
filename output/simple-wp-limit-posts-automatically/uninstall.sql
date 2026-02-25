-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slpa_post_wordcut', 'slpa_post_letters', 'slpa_post_linktext', 'slpa_post_ending', 'slpa_post_home', 'slpa_post_category', 'slpa_post_archive', 'slpa_post_search', 'slpa_striptags');

