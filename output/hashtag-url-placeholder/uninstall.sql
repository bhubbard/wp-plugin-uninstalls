-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hashtag_name_one', 'hashtag_post_type_query_one', 'hashtag_post_type_category_query_one', 'hashtag_name_two', 'hashtag_post_type_query_two', 'hashtag_post_type_category_query_two', 'hashtag_name_three', 'hashtag_post_type_query_three', 'hashtag_post_type_category_query_three', 'hashtag_name_four', 'hashtag_post_type_query_four', 'hashtag_post_type_category_query_four', 'hashtag_name_five', 'hashtag_post_type_query_five', 'hashtag_post_type_category_query_five');

