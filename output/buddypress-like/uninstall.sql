-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_like_settings', 'bp_like_db_version', 'bp-like-db-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('liked_count', 'bp_liked_activities', 'bp_liked_blogposts');
DELETE FROM wp_usermeta WHERE meta_key IN ('liked_count', 'bp_liked_activities', 'bp_liked_blogposts');
DELETE FROM wp_termmeta WHERE meta_key IN ('liked_count', 'bp_liked_activities', 'bp_liked_blogposts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('liked_count', 'bp_liked_activities', 'bp_liked_blogposts');

