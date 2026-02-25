#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vitor_enable_realtime'
wp option delete 'vitor_custom_blocklist_enabled'
wp option delete 'vitor_block_comments'
wp option delete 'vitor_block_trackbacks'
wp option delete 'vitor_hide_commentform'
wp option delete 'vitor_block_registration'
wp option delete 'vitor_flag_registration'
wp option delete 'vitor_block_login'
wp option delete 'vitor_cloudflare_enabled'
wp option delete 'vitor_block_everything'
wp option delete 'vitor_exit_list_last_updated'
wp option delete 'vitor_el_update_frequency'
wp option delete 'vitor_stat_blockedviews'
wp option delete 'vitor_blocked_page'
wp option delete 'vitor_custom_block_message'
wp option delete 'vitor_tor_blocked_message'
wp option delete 'vitor_stat_trackbacks'
wp option delete 'vitor_stat_comments'
wp option delete 'vitor_stat_registration'
wp option delete 'vitor_stat_login'
wp option delete 'vitor_realtime_timeout'
wp option delete 'vitor_use_captcha'
wp option delete 'vitor_use_hcaptcha'
wp option delete 'vitor_custom_blocklist'
wp option delete 'vitor_last_update_failure'
wp option delete 'vitor_exit_list'
wp option delete 'hcaptcha_settings'
wp option delete 'hcaptcha_secret_key'

# Delete Transients
wp transient delete 'vitor_list_updating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vitor_token:%' OR option_name LIKE '_site_transient_vitor_token:%'"

# Clear Cron Jobs
wp cron event delete 'vitor_update_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vitor_flagged_registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vitor_flagged_registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vitor_flagged_registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vitor_flagged_registration'"
