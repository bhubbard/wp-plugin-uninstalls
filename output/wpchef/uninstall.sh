#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpchef_%'"
wp option delete 'wpchef_server'
wp option delete 'wpchef_access_token'
wp option delete 'wpchef_stats_token'
wp option delete 'wpchef_statsusers'
wp option delete 'wpchef_server_name'
wp option delete 'wpchef_actions_made'
wp option delete 'wpchef_installed_recipes'
wp option delete 'wpchef_recipes'
wp option delete 'wpchef_builtin_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'recipe_autoupdate_alert_%'"
wp option delete 'wpchef_autoupdate'
wp option delete 'wpchef_updates_alert_sent'
wp option delete 'wpchef_recipes_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpchef_autoupdate_actions_%'"
wp option delete 'wpchef_autoupdate_queue'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpchef_recipe_children_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpchef_recipe_%'"
wp option delete 'wpchef_themes_history'
wp option delete 'wpchef_me'
wp option delete 'wpchef_cache'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_recipe-confirm-%' OR option_name LIKE '_site_transient_recipe-confirm-%'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpchef_fetch_recipe_%' OR option_name LIKE '_site_transient_wpchef_fetch_recipe_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpchef_apply_token_%' OR option_name LIKE '_site_transient_wpchef_apply_token_%'"

# Clear Cron Jobs
wp cron event delete 'wpchef_updates_cron'
wp cron event delete 'wpchef_autoupdate_check'
wp cron event delete 'wpchef_autoupdate_step'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpchef_auth_now'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpchef_auth_now'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpchef_auth_now'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpchef_auth_now'"
