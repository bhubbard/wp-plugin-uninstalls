#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oneclickorder_settings'
wp option delete 'oneclickorder_order_page_id'
wp option delete 'oneclickorder_manual_orders_log'
wp option delete 'oneclickorder_report_email'
wp option delete 'oneclickorder_order_count'
wp option delete 'oneclickorder_last_reset'
wp option delete 'oneclickorder_install_date'
wp option delete 'oneclickorder_start_date'

