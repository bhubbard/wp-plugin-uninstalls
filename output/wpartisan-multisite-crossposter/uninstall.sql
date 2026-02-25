-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'mscp_user_blogs_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aggregator_orig_blog_id', '_aggregator_orig_post_id', '_mscp_blogs', '_aggregator_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aggregator_orig_blog_id', '_aggregator_orig_post_id', '_mscp_blogs', '_aggregator_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aggregator_orig_blog_id', '_aggregator_orig_post_id', '_mscp_blogs', '_aggregator_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aggregator_orig_blog_id', '_aggregator_orig_post_id', '_mscp_blogs', '_aggregator_permalink');

