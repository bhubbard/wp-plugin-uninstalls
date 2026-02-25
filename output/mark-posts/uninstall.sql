-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mark_posts_settings', 'marker_posts_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mark_posts_term_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mark_posts_term_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mark_posts_term_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mark_posts_term_id');

