-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_expire_posts_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auto_expire_posts_date', 'auto_expire_posts_timezone', 'auto_expire_posts_status', 'auto_expire_posts_expired');
DELETE FROM wp_usermeta WHERE meta_key IN ('auto_expire_posts_date', 'auto_expire_posts_timezone', 'auto_expire_posts_status', 'auto_expire_posts_expired');
DELETE FROM wp_termmeta WHERE meta_key IN ('auto_expire_posts_date', 'auto_expire_posts_timezone', 'auto_expire_posts_status', 'auto_expire_posts_expired');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auto_expire_posts_date', 'auto_expire_posts_timezone', 'auto_expire_posts_status', 'auto_expire_posts_expired');

