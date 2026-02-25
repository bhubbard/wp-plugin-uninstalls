-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pct_shortcode_option', 'pct_views_text', 'pct_views_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pct_post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('pct_post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('pct_post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pct_post_views_count');

