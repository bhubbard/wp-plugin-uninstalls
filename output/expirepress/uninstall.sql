-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expired_post_logs', 'expp_post_cron_events');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('expiry_date_time', 'expiry_action', 'expiry_post_password', 'new_category', 'new_title', 'post_hidden_from_sitemap', 'post_hidden_from_search');
DELETE FROM wp_usermeta WHERE meta_key IN ('expiry_date_time', 'expiry_action', 'expiry_post_password', 'new_category', 'new_title', 'post_hidden_from_sitemap', 'post_hidden_from_search');
DELETE FROM wp_termmeta WHERE meta_key IN ('expiry_date_time', 'expiry_action', 'expiry_post_password', 'new_category', 'new_title', 'post_hidden_from_sitemap', 'post_hidden_from_search');
DELETE FROM wp_commentmeta WHERE meta_key IN ('expiry_date_time', 'expiry_action', 'expiry_post_password', 'new_category', 'new_title', 'post_hidden_from_sitemap', 'post_hidden_from_search');

