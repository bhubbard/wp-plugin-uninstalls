-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmsc_rsum_options', 'lmsc_rsum_installed_time', 'lmsc_rsum_email_subscribed', 'lmsc_rsum_subscriber_email', 'lmsc_rsum_subscription_date', 'lmsc_rsum_activation_time', 'rsum_options', 'lmsc_rsum_migrated_from_rsum', 'llrm', 'lmsc_rsum_migrated_from_llrm', 'lmsc_rsum_migration_date', 'woocommerce_myaccount_page_id', 'lmsc_rsum_activation_redirect', 'rsum_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lmsc_rsum_login_count', 'lmsc_rsum_last_login', 'lmsc_rsum_migrated', 'lmsc_rsum_first_login', '_lmsc_rsum_visibility_mode', '_lmsc_rsum_visibility_roles', '_lmsc_rsum_visibility_memberships');
DELETE FROM wp_usermeta WHERE meta_key IN ('lmsc_rsum_login_count', 'lmsc_rsum_last_login', 'lmsc_rsum_migrated', 'lmsc_rsum_first_login', '_lmsc_rsum_visibility_mode', '_lmsc_rsum_visibility_roles', '_lmsc_rsum_visibility_memberships');
DELETE FROM wp_termmeta WHERE meta_key IN ('lmsc_rsum_login_count', 'lmsc_rsum_last_login', 'lmsc_rsum_migrated', 'lmsc_rsum_first_login', '_lmsc_rsum_visibility_mode', '_lmsc_rsum_visibility_roles', '_lmsc_rsum_visibility_memberships');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lmsc_rsum_login_count', 'lmsc_rsum_last_login', 'lmsc_rsum_migrated', 'lmsc_rsum_first_login', '_lmsc_rsum_visibility_mode', '_lmsc_rsum_visibility_roles', '_lmsc_rsum_visibility_memberships');

