-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('issuem-leaky-paywall-site-wide', 'last_zeen101_dot_com_leaky_rss_item', 'issuem-leaky-paywall', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '_lpl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_leaky_paywall_subscriber_notes', 'leaky_paywall_rss_item_notice_link', '_gateway_txn_id', '_price', '_status', '_nag_location_id', '_user_data', '_customer_data', '_level_id', '_gateway', '_first_name', '_last_name', '_email', '_currency', '_is_recurring', '_paypal_request', '_transaction_status', '_login', '_issuem_leaky_paywall_show_upgrade_message', '_issuem_leaky_paywall_visibility', '_password', '_field_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_leaky_paywall_subscriber_notes', 'leaky_paywall_rss_item_notice_link', '_gateway_txn_id', '_price', '_status', '_nag_location_id', '_user_data', '_customer_data', '_level_id', '_gateway', '_first_name', '_last_name', '_email', '_currency', '_is_recurring', '_paypal_request', '_transaction_status', '_login', '_issuem_leaky_paywall_show_upgrade_message', '_issuem_leaky_paywall_visibility', '_password', '_field_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_leaky_paywall_subscriber_notes', 'leaky_paywall_rss_item_notice_link', '_gateway_txn_id', '_price', '_status', '_nag_location_id', '_user_data', '_customer_data', '_level_id', '_gateway', '_first_name', '_last_name', '_email', '_currency', '_is_recurring', '_paypal_request', '_transaction_status', '_login', '_issuem_leaky_paywall_show_upgrade_message', '_issuem_leaky_paywall_visibility', '_password', '_field_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_leaky_paywall_subscriber_notes', 'leaky_paywall_rss_item_notice_link', '_gateway_txn_id', '_price', '_status', '_nag_location_id', '_user_data', '_customer_data', '_level_id', '_gateway', '_first_name', '_last_name', '_email', '_currency', '_is_recurring', '_paypal_request', '_transaction_status', '_login', '_issuem_leaky_paywall_show_upgrade_message', '_issuem_leaky_paywall_visibility', '_password', '_field_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_level_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_level_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_level_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_level_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_plan';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_plan';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_plan';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_plan';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payment_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payment_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payment_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payment_status';

