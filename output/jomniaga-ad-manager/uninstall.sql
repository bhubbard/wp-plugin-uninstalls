-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjomniaga_username', 'wpjomniaga_tracking_code', 'wpjomniaga_category', 'wpjomniaga_related_show', 'wpjomniaga_related_title', 'wpjomniaga_related_number', 'wpjomniaga_convert_home', 'wpjomniaga_convert_single_post', 'wpjomniaga_convert_single_page', 'wpjomniaga_convert_comment', 'wpjomniaga_convert_archive', 'wpjomniaga_convert_limit_perpage', 'wpjomniaga_keyword_limit_perpage', 'wpjomniaga_convert_limit_percomment', 'wpjomniaga_keyword_limit_percomment', 'wpjomniaga_link_new_window', 'wpjomniaga_link_no_follow');

