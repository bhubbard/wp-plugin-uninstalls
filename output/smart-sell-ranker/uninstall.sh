#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'SmartSellRanker_cron_start'
wp option delete 'SmartSellRanker_setting_saved'
wp option delete 'ss_ranker_general_tab_settings'
wp option delete 'SmartSellRanker_installed'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'smart_sell_ranker_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_ranker_sales_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_ranker_sales_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_ranker_sales_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_ranker_sales_count'"
