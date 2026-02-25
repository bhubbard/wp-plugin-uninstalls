-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_vd_user_login', '_vd_rate_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vd_rate', 'rating_once', '_vd_user_rate', '_vd_post_rate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vd_rate', 'rating_once', '_vd_user_rate', '_vd_post_rate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vd_rate', 'rating_once', '_vd_user_rate', '_vd_post_rate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vd_rate', 'rating_once', '_vd_user_rate', '_vd_post_rate');

