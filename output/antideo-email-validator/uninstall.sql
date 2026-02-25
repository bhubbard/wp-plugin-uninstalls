-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adev_token', 'adev_token_expired_message', 'adev_whitelist', 'adev_blacklist', 'adev_domain_whitelist', 'adev_domain_blacklist', 'adev_allow_free_email', 'adev_allow_role_business_email', 'adev_allow_disposable_email', 'adev_attempts', 'adev_ignored_uris');

