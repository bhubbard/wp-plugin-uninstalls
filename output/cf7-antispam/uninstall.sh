#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7a_options'
wp option delete 'cf7a_geodb_update'
wp option delete 'cf7a_db_version'

# Delete Transients
wp transient delete 'cf7a_notice'
wp transient delete 'cf7a_activation'

# Clear Cron Jobs
wp cron event delete 'cf7a_cron'
wp cron event delete 'cf7a_geoip_update_db'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7a_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7a_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7a_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7a_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7a_b8_classification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7a_b8_classification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7a_b8_classification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7a_b8_classification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fields'"
