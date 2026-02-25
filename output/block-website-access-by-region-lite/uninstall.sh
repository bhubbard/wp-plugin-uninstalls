#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsas_maxmind_license'
wp option delete 'bsas_mu_initialized_lite'
wp option delete 'bsas_retention_days'
wp option delete 'bsas_transient_version'
wp option delete 'bsas_enable_rate_limit'
wp option delete 'bsas_rate_limit'
wp option delete 'bsas_log_mode'
wp option delete 'bsas_store_plain_ip'
wp option delete 'bsas_hash_ips'
wp option delete 'bsas_enabled'
wp option delete 'bsas_block_rest_api'
wp option delete 'bsas_allow_crawlers'
wp option delete 'bsas_strict_asn'
wp option delete 'bsas_unknown_policy'
wp option delete 'bsas_blocked_countries'
wp option delete 'bsas_block_heading'
wp option delete 'bsas_install_time'
wp option delete 'bsas_promo_dismissed_at'
wp option delete 'bsas_review_never_show'
wp option delete 'bsas_review_dismissed_at'

# Clear Cron Jobs
wp cron event delete 'bsas_weekly_mm_update_lite'
wp cron event delete 'bsas_daily_maintenance_lite'

