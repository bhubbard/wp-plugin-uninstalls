#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.lock'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wflsbucket:%' OR option_name LIKE '_site_transient_wflsbucket:%'"

# Clear Cron Jobs
wp cron event delete 'wordfence_ls_role_sync_cron'
wp cron event delete 'wordfence_ls_ntp_cron'

# Direct DB Queries (Fallback)
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
