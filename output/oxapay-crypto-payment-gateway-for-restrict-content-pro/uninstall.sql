-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_new', 'rcp_subscription_level_old', 'rcp_payment_profile_id', 'rcp_recurring', '_rcp_expired_email_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_new', 'rcp_subscription_level_old', 'rcp_payment_profile_id', 'rcp_recurring', '_rcp_expired_email_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_new', 'rcp_subscription_level_old', 'rcp_payment_profile_id', 'rcp_recurring', '_rcp_expired_email_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_new', 'rcp_subscription_level_old', 'rcp_payment_profile_id', 'rcp_recurring', '_rcp_expired_email_sent');

