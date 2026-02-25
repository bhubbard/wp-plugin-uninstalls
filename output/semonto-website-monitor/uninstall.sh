#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'semonto_secret_key'
wp option delete 'semonto_enable_now_test'
wp option delete 'semonto_warning_threshold_now'
wp option delete 'semonto_warning_threshold_5m'
wp option delete 'semonto_warning_threshold_15m'
wp option delete 'semonto_error_threshold_now'
wp option delete 'semonto_error_threshold_5m'
wp option delete 'semonto_error_threshold_15m'
wp option delete 'semonto_enable_5m_test'
wp option delete 'semonto_enable_15m_test'
wp option delete 'semonto_enable_wpdb_test'
wp option delete 'semonto_error_threshold_wpdb'
wp option delete 'semonto_warning_threshold_wpdb'
wp option delete 'semonto_enable_memory_usage_test'
wp option delete 'semonto_warning_threshold_memory_usage'
wp option delete 'semonto_error_threshold_memory_usage'
wp option delete 'semonto_enable_disk_space_test'
wp option delete 'semonto_config_disk_space'
wp option delete 'semonto_enable_disk_space_inode_test'
wp option delete 'semonto_config_disk_space_inode'
wp option delete 'semonto_enable_caching'
wp option delete 'semonto_cache_lifespan'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'semonto_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'semonto_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'semonto_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'semonto_notice_dismissed'"
