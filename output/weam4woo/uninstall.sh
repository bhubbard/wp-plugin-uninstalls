#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weam_attr_global_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'weam_attr_%'"
wp option delete 'weam_attr_backups'
wp option delete 'weam_attribute_settings'
wp option delete 'weam_attr_version'
wp option delete 'weam_attr_activated_at'
wp option delete 'weam_attr_first_install'
wp option delete 'weam_attr_stats'
wp option delete 'weam_attr_keep_data_on_uninstall'
wp option delete 'weam_attr_db_version'
wp option delete 'weam_attr_samples_created'
wp option delete 'weam_attr_auto_enabled_count'
wp option delete 'weam_attr_activation_notice_shown'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'weam_attr_activation_notice'

# Clear Cron Jobs
wp cron event delete 'weam_attr_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
