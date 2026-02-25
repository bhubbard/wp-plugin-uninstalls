#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dashboard_subscribe'"
wp option delete 'ssing_date_format'
wp option delete 'ssing_dashboard_widget_flag'
wp option delete 'ssign_notice'
wp option delete 'swiftsign_pages'

