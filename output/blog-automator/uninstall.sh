#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiauto_settings'
wp option delete 'aiauto_limit'
wp option delete 'aiauto_db_version'

# Clear Cron Jobs
wp cron event delete 'aiauto_process_posts_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiauto_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiauto_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiauto_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiauto_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiauto_generated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiauto_generated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiauto_generated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiauto_generated_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiauto_generation_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiauto_generation_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiauto_generation_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiauto_generation_method'"
