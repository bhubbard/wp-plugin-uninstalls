#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product-view-count_version'
wp option delete 'product-view-count_install_time'
wp option delete 'pvc_db_version'
wp option delete 'woocommerce_version'
wp option delete 'pvc_plugin_version'
wp option delete '_site_transient_update_plugins'
wp option delete 'codexpert-blog-json'

# Delete Transients
wp transient delete 'pvc_migration_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'pvc_weekly_report'
wp cron event delete 'pvc_monthly_report'
wp cron event delete 'codexpert-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvc_show_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvc_show_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvc_show_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvc_show_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvc_count_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvc_count_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvc_count_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvc_count_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvc_select_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvc_select_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvc_select_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvc_select_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvc_min_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvc_min_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvc_min_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvc_min_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pvc_max_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pvc_max_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pvc_max_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pvc_max_number'"
