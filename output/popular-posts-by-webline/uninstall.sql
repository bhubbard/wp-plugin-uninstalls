-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wli_popular_posts_options', 'wli_popular_posts_settings', 'ppbw_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wli_pp_post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wli_pp_post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wli_pp_post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wli_pp_post_views_count');

