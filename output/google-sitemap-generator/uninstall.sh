#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_rewrite_done'
wp option delete 'sm_options'
wp option delete 'sm_show_beta_banner'
wp option delete 'sm_beta_banner_discarded_on'
wp option delete 'sm_beta_banner_discarded_count'
wp option delete 'sm_beta_notice_dismissed_from_wp_admin'
wp option delete 'sm_user_consent'
wp option delete 'auto_update_plugins'
wp option delete 'sm_hide_auto_update_banner'
wp option delete 'wpseo'
wp option delete 'aioseo_options'
wp option delete 'jetpack_active_modules'
wp option delete 'gsg_indexnow-is_valid_api_key'
wp option delete 'gsg_indexnow-admin_api_key'
wp option delete 'sm_status'
wp option delete 'sm_disabe_other_plugin'
wp option delete 'sm_beta_opt_in'
wp option delete 'sm_cpages'

# Delete Transients
wp transient delete 'sm_ping_post_id'

# Clear Cron Jobs
wp cron event delete 'sm_ping_daily'
wp cron event delete 'sm_ping'

