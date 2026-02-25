-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Main', 'mihdan_noexternallinks_flush');
DELETE FROM wp_options WHERE option_name LIKE '%masking_type';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_time';
DELETE FROM wp_options WHERE option_name LIKE '%mask_links';
DELETE FROM wp_options WHERE option_name LIKE '%mask_posts_pages';
DELETE FROM wp_options WHERE option_name LIKE '%mask_comments';
DELETE FROM wp_options WHERE option_name LIKE '%mask_comment_author';
DELETE FROM wp_options WHERE option_name LIKE '%mask_rss';
DELETE FROM wp_options WHERE option_name LIKE '%mask_rss_comments';
DELETE FROM wp_options WHERE option_name LIKE '%nofollow';
DELETE FROM wp_options WHERE option_name LIKE '%target_blank';
DELETE FROM wp_options WHERE option_name LIKE '%noindex_tag';
DELETE FROM wp_options WHERE option_name LIKE '%noindex_comment';
DELETE FROM wp_options WHERE option_name LIKE '%seo_hide';
DELETE FROM wp_options WHERE option_name LIKE '%seo_hide_include_list';
DELETE FROM wp_options WHERE option_name LIKE '%seo_hide_mode';
DELETE FROM wp_options WHERE option_name LIKE '%seo_hide_exclude_list';
DELETE FROM wp_options WHERE option_name LIKE '%logging';
DELETE FROM wp_options WHERE option_name LIKE '%log_duration';
DELETE FROM wp_options WHERE option_name LIKE '%anonymize_links';
DELETE FROM wp_options WHERE option_name LIKE '%anonymous_link_provider';
DELETE FROM wp_options WHERE option_name LIKE '%bot_targeting';
DELETE FROM wp_options WHERE option_name LIKE '%bots_selector';
DELETE FROM wp_options WHERE option_name LIKE '%check_referrer';
DELETE FROM wp_options WHERE option_name LIKE '%remove_all_links';
DELETE FROM wp_options WHERE option_name LIKE '%links_to_text';
DELETE FROM wp_options WHERE option_name LIKE '%debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%link_structure';
DELETE FROM wp_options WHERE option_name LIKE '%separator';
DELETE FROM wp_options WHERE option_name LIKE '%link_encoding';
DELETE FROM wp_options WHERE option_name LIKE '%link_shortening';
DELETE FROM wp_options WHERE option_name LIKE '%adfly_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%adfly_user_id';
DELETE FROM wp_options WHERE option_name LIKE '%adfly_domain';
DELETE FROM wp_options WHERE option_name LIKE '%adfly_advert_type';
DELETE FROM wp_options WHERE option_name LIKE '%bitly_login';
DELETE FROM wp_options WHERE option_name LIKE '%bitly_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%shortest_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%yourls_signature';
DELETE FROM wp_options WHERE option_name LIKE '%yourls_domain';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_message';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_page';
DELETE FROM wp_options WHERE option_name LIKE '%inclusion_list';
DELETE FROM wp_options WHERE option_name LIKE '%exclusion_list';
DELETE FROM wp_options WHERE option_name LIKE '%skip_auth';
DELETE FROM wp_options WHERE option_name LIKE '%skip_follow';
DELETE FROM wp_options WHERE option_name LIKE '%compatibility_check';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%last_cleared_logs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mask_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('mask_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('mask_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mask_links');

