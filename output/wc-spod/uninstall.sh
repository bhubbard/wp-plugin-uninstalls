#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spodpod_flush_rewrite_rules_flag'
wp option delete 'spodpod_plugin_version'
wp option delete 'ng_spod_pod_token'
wp option delete 'ng_spod_pod_isconnected'

# Clear Cron Jobs
wp cron event delete 'spodpod_scheduler_image_add_delete'
wp cron event delete 'spodpod_logger_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spod_order_commited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spod_order_commited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spod_order_commited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spod_order_commited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spod_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spod_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spod_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spod_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spod_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spod_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spod_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spod_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
