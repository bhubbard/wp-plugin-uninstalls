#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dh_ptp_show_legacy_tables'
wp option delete 'dh_ptp_show_review_notice'
wp option delete 'links_updated_date_format'

# Clear Cron Jobs
wp cron event delete 'fca_ept_schedule_review_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '1_dh_ptp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '1_dh_ptp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '1_dh_ptp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '1_dh_ptp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'screen_layout_easy-pricing-table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'screen_layout_easy-pricing-table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'screen_layout_easy-pricing-table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'screen_layout_easy-pricing-table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
