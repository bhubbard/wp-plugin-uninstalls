-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edddba_discount_auto_delete', '_edddba_campaign_id', '_edd_discount_expiration', '_fz_feed_url', '_fz_cache_duration', '_edddba_discount_code', '_edddba_payment_id', '_edddba_customer_id', '_edddba_discount_code_id', '_edddba_campaign_discount_use_count', '_edddba_campaign_maximum_uses', '_edddba_campaign_status', '_edddba_campaign_discount_issue_count', '_edddba_discount', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edddba_discount_auto_delete', '_edddba_campaign_id', '_edd_discount_expiration', '_fz_feed_url', '_fz_cache_duration', '_edddba_discount_code', '_edddba_payment_id', '_edddba_customer_id', '_edddba_discount_code_id', '_edddba_campaign_discount_use_count', '_edddba_campaign_maximum_uses', '_edddba_campaign_status', '_edddba_campaign_discount_issue_count', '_edddba_discount', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edddba_discount_auto_delete', '_edddba_campaign_id', '_edd_discount_expiration', '_fz_feed_url', '_fz_cache_duration', '_edddba_discount_code', '_edddba_payment_id', '_edddba_customer_id', '_edddba_discount_code_id', '_edddba_campaign_discount_use_count', '_edddba_campaign_maximum_uses', '_edddba_campaign_status', '_edddba_campaign_discount_issue_count', '_edddba_discount', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edddba_discount_auto_delete', '_edddba_campaign_id', '_edd_discount_expiration', '_fz_feed_url', '_fz_cache_duration', '_edddba_discount_code', '_edddba_payment_id', '_edddba_customer_id', '_edddba_discount_code_id', '_edddba_campaign_discount_use_count', '_edddba_campaign_maximum_uses', '_edddba_campaign_status', '_edddba_campaign_discount_issue_count', '_edddba_discount', 'dismissed_wp_pointers');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_edddba_converted_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_edddba_converted_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_edddba_converted_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_edddba_converted_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_edddba_campaign_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_edddba_campaign_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_edddba_campaign_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_edddba_campaign_id_%';

