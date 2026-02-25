-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tchpcs_displayimage', 'tchpcs_word_limit', 'tchpcs_query_posts_showposts', 'tchpcs_query_posts_orderby', 'tchpcs_query_posts_order', 'tchpcs_query_posts_category');

