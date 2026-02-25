#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'copyspell-ai-license'
wp option delete 'copyspell_ai_license_status'
wp option delete 'copyspell_ai_db_version'
wp option delete 'copyspell_ai_options'
wp option delete 'copyspell_ai_signature'
wp option delete 'woocommerce_settings'
wp option delete 'csai_options'
wp option delete 'csai_db_version'

# Delete Transients
wp transient delete 'copyspell_verification_token'

# Clear Cron Jobs
wp cron event delete 'csai_job_watchdog'
wp cron event delete 'copyspell_ai_daily_license_check'
wp cron event delete 'copyspell_ai_cron_job'
wp cron event delete 'copyspell_ai_cleanup_hook'
wp cron event delete 'copyspell_ai_sync_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copyspell_ai'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copyspell_ai'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copyspell_ai'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copyspell_ai'"
