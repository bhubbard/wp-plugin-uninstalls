#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninjalytics_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ninjalytics_report_dates_%'"
wp option delete 'ninjalytics_hide_inactive_templates'
wp option delete 'hm_psr_report_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hm_psrp_fields_%' OR option_name LIKE '_site_transient_hm_psrp_fields_%'"

# Clear Cron Jobs
wp cron event delete 'ninjalytics_update_field_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ninjalytics_admin_notice_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ninjalytics_admin_notice_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ninjalytics_admin_notice_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ninjalytics_admin_notice_hide'"
