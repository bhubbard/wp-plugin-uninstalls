-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwstripe_show_excerpts', 'rwstripe_collect_password', 'rwstripe_stripe_account_id', 'rwstripe_stripe_access_token', 'rwstripe_stripe_publishable_key', 'rwstripe_stripe_environment', 'rwstripe_disconnected_accounts', 'rwstripe-admin-notice');

