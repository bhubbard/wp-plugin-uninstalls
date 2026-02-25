#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_ocw_ver'
wp option delete 'ocw_db_ver'
wp option delete 'wb_ocw_promote'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_ocw_cnf_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'wb_item_faqs'
wp option delete 'wbm-cnf'

# Clear Cron Jobs
wp cron event delete 'ocw_mail_send'

