-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_old', 'rcp_pending_subscription_level', 'rcp_subscription_level_new', 'rcp_payment_profile_id', 'rcp_signup_method', 'rcp_recurring', '_rcp_expired_email_sent', 'rcp_user_role_old');
DELETE FROM wp_usermeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_old', 'rcp_pending_subscription_level', 'rcp_subscription_level_new', 'rcp_payment_profile_id', 'rcp_signup_method', 'rcp_recurring', '_rcp_expired_email_sent', 'rcp_user_role_old');
DELETE FROM wp_termmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_old', 'rcp_pending_subscription_level', 'rcp_subscription_level_new', 'rcp_payment_profile_id', 'rcp_signup_method', 'rcp_recurring', '_rcp_expired_email_sent', 'rcp_user_role_old');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rcp_subscription_level', 'rcp_subscription_level_old', 'rcp_pending_subscription_level', 'rcp_subscription_level_new', 'rcp_payment_profile_id', 'rcp_signup_method', 'rcp_recurring', '_rcp_expired_email_sent', 'rcp_user_role_old');

