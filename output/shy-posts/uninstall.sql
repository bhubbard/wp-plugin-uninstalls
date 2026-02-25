-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shy_posts_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shy_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('shy_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('shy_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shy_post');

