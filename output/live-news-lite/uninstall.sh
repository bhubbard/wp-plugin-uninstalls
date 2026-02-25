#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daextlnl_options_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_database_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tickers_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_featured_news_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sliding_news_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_assets_mode'"
wp option delete 'daextlnl_load_momentjs'
wp option delete 'daextlnl_dismissible_notice_a'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_daextlnl_ticker_%' OR option_name LIKE '_site_transient_daextlnl_ticker_%'"

