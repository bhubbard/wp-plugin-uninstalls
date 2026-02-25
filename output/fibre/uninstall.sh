#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'akismet_strictness'
wp option delete 'bvAccounts'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'rg_gforms_key'
wp option delete 'rg_gforms_enable_akismet'
wp option delete 'limit_login_client_type'
wp option delete 'limit_login_allowed_retries'
wp option delete 'limit_login_lockout_duration'
wp option delete 'limit_login_allowed_lockouts'
wp option delete 'limit_login_long_duration'
wp option delete 'limit_login_valid_duration'
wp option delete 'limit_login_lockout_notify'
wp option delete 'limit_login_notify_email_after'
wp option delete 'limit_login_cookies'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'wp-short-pixel-verifiedKey'
wp option delete 'wp-short-backup_images'
wp option delete 'wp-short-create-webp'
wp option delete 'wp-short-pixel-create-webp-markup'
wp option delete 'wp-short-pixel-png2jpg'
wp option delete 'wp-short-pixel-savedSpace'
wp option delete 'wp-short-pixel-compression'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

