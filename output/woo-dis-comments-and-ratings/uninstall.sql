-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disqus_forum_url', 'woocommerce_disqus_comments_and_ratings', 'wp_zamartz_admin_event_tracker', 'zamartz_api_admin_notice_data', 'active_sitewide_plugins', 'disqus_active');
DELETE FROM wp_options WHERE option_name LIKE '%cron_log';
DELETE FROM wp_options WHERE option_name LIKE '%api_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%api_password';
DELETE FROM wp_options WHERE option_name LIKE '%api_product_id';
DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails';
DELETE FROM wp_options WHERE option_name LIKE '%api_get_response';
DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data';
DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status';

