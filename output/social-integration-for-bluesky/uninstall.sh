#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bluesky_schema_version'
wp option delete 'bluesky_accounts'
wp option delete 'bluesky_active_account'
wp option delete 'bluesky_global_settings'
wp option delete 'bluesky_settings_backup'
wp option delete 'bluesky_settings_backup_date'
wp option delete 'bluesky_account_auth_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp option delete 'bluesky_settings'
wp option delete 'bluesky_settings_secret'
wp option delete 'bluesky_settings__activation_date'

# Delete Transients
wp transient delete 'bluesky_logout_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bluesky_circuit_%' OR option_name LIKE '_site_transient_bluesky_circuit_%'"
wp transient delete 'bluesky_health_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_bs_post_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_bs_post_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_bs_post_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_bs_post_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bluesky_expired_creds_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bluesky_expired_creds_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bluesky_expired_creds_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bluesky_expired_creds_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bluesky_circuit_breaker_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bluesky_circuit_breaker_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bluesky_circuit_breaker_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bluesky_circuit_breaker_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_accounts_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_accounts_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_accounts_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_accounts_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_failed_accounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_failed_accounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_failed_accounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_failed_accounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_retry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_retry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_retry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_retry_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndicated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndicated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndicated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndicated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_scheduled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_scheduled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_scheduled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_scheduled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_dont_syndicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_dont_syndicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_dont_syndicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_dont_syndicate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bluesky_syndication_accounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bluesky_syndication_accounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bluesky_syndication_accounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bluesky_syndication_accounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
