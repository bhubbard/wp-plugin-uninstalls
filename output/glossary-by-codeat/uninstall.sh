#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count_terms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count_related_terms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-extra'"
wp option delete 'glossary-settings'
wp option delete 'glossary-customizer'
wp option delete 'glossary-extra'
wp option delete 'rgmk_google_map_api_key'
wp option delete 'sd_load_widgets'
wp option delete 'sidebars_widgets'
wp option delete 'dnh_dismissed_notices'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sites'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_link_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_link_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_link_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_link_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dnh_dismissed_notices'"
