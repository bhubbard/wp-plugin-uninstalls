-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_subscription_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscriber_email', '_subscriber_notification', '_subscriber_categories', '_subscriber_activation_key', '_subscription_date', '_updated_post_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscriber_email', '_subscriber_notification', '_subscriber_categories', '_subscriber_activation_key', '_subscription_date', '_updated_post_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscriber_email', '_subscriber_notification', '_subscriber_categories', '_subscriber_activation_key', '_subscription_date', '_updated_post_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscriber_email', '_subscriber_notification', '_subscriber_categories', '_subscriber_activation_key', '_subscription_date', '_updated_post_ids');

