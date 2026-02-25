#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'wordfenceActivated'
wp option delete 'wordfence_version'
wp option delete 'iwp_client_action_message_id'
wp option delete 'iwp_client_public_key'
wp option delete 'wordfence_syncingAttackData'
wp option delete 'wordfence_lastSyncAttackData'
wp option delete 'wordfence_syncAttackDataAttempts'
wp option delete 'limit_login_retries'
wp option delete 'wf_plugin_act_error'
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.lock'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wordfenceCentralJWT%' OR option_name LIKE '_site_transient_wordfenceCentralJWT%'"
wp transient delete 'wordfenceCentralDisconnectCount'
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'update_themes'
wp transient delete 'wordfence_updating_notifications'
wp transient delete 'wordfenceUnlockTries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wfunlock_%' OR option_name LIKE '_site_transient_wfunlock_%'"
wp transient delete 'wfSyncGeoIPActive'
wp transient delete 'wfsn_backoff'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wflsbucket:%' OR option_name LIKE '_site_transient_wflsbucket:%'"

# Clear Cron Jobs
wp cron event delete 'wordfence_email_activity_report'
wp cron event delete 'wordfence_batchSendAuditEvents'
wp cron event delete 'wordfence_batchSendSecurityEvents'
wp cron event delete 'wordfence_daily_autoUpdate'
wp cron event delete 'wordfence_daily_cron'
wp cron event delete 'wordfence_hourly_cron'
wp cron event delete 'wordfence_scheduled_scan'
wp cron event delete 'wordfence_refreshUpdateNotification'
wp cron event delete 'wordfence_completeCoreUpdateNotification'
wp cron event delete 'wordfence_version_check'
wp cron event delete 'wordfence_batchReportBlockedAttempts'
wp cron event delete 'wordfence_batchReportFailedAttempts'
wp cron event delete 'wordfence_processAttackData'
wp cron event delete 'wordfence_start_scheduled_scan'
wp cron event delete 'wordfence_ls_role_sync_cron'
wp cron event delete 'wordfence_ls_ntp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wf_twoFactorNonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wf_twoFactorNonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wf_twoFactorNonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wf_twoFactorNonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wf_twoFactorNonceTime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wf_twoFactorNonceTime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wf_twoFactorNonceTime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wf_twoFactorNonceTime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wordfence-notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wordfence-notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wordfence-notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wordfence-notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfls-last-captcha-score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfls-last-captcha-score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfls-last-captcha-score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfls-last-captcha-score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfls-last-login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfls-last-login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfls-last-login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfls-last-login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfls-captcha-nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfls-captcha-nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfls-captcha-nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfls-captcha-nonce'"
