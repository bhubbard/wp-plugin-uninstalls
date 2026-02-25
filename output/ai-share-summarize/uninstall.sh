#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_aiss_version'
wp option delete 'ayudawp_aiss_options'
wp option delete 'ayudawp_aiss_db_version'
wp option delete 'ayudawp_aiss_activation_notice_dismissed'
wp option delete 'ayudawp_aiss_vigia_tip_dismissed'

# Delete Transients
wp transient delete 'ayudawp_aiss_just_activated'

# Clear Cron Jobs
wp cron event delete 'ayudawp_aiss_daily_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_noindex'"
