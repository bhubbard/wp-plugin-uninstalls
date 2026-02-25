-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppsfwoo_db_version', 'ppsfwoo_plans', 'ppsfwoo_subscribed_webhooks', 'ppsfwoo_webhook_id', 'ppsfwoo_refresh_plans_ran', 'ppsfwoo_customer_nonce', 'ppsfwoo_ppcp_updated');

