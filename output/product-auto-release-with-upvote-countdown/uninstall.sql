-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpar_settings', '_parl_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notify_product', 'enable_notification', 'enable_auto_release', 'auto_release_date', 'notification_type', 'notify_product_lead', 'enable_show_total_votes', 'notify_product_voted_ip', 'notify_product_lead_count', 'notify_product_lead_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('notify_product', 'enable_notification', 'enable_auto_release', 'auto_release_date', 'notification_type', 'notify_product_lead', 'enable_show_total_votes', 'notify_product_voted_ip', 'notify_product_lead_count', 'notify_product_lead_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('notify_product', 'enable_notification', 'enable_auto_release', 'auto_release_date', 'notification_type', 'notify_product_lead', 'enable_show_total_votes', 'notify_product_voted_ip', 'notify_product_lead_count', 'notify_product_lead_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notify_product', 'enable_notification', 'enable_auto_release', 'auto_release_date', 'notification_type', 'notify_product_lead', 'enable_show_total_votes', 'notify_product_voted_ip', 'notify_product_lead_count', 'notify_product_lead_generated');

