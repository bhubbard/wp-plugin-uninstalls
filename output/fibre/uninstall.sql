-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akismet_strictness', 'bvAccounts', 'classic-editor-replace', 'classic-editor-allow-users', 'rg_gforms_key', 'rg_gforms_enable_akismet', 'limit_login_client_type', 'limit_login_allowed_retries', 'limit_login_lockout_duration', 'limit_login_allowed_lockouts', 'limit_login_long_duration', 'limit_login_valid_duration', 'limit_login_lockout_notify', 'limit_login_notify_email_after', 'limit_login_cookies', 'woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city', 'wp-short-pixel-verifiedKey', 'wp-short-backup_images', 'wp-short-create-webp', 'wp-short-pixel-create-webp-markup', 'wp-short-pixel-png2jpg', 'wp-short-pixel-savedSpace', 'wp-short-pixel-compression', 'active_sitewide_plugins', 'update_core', 'update_plugins', 'update_themes');

