#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_contact_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_inbound_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_outbound_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_spam_days'"
wp option delete 'inazo_flamingo_auto_trash_version'
wp option delete 'inazo_flamingo_auto_trash_contact_days'
wp option delete 'inazo_flamingo_auto_trash_inbound_days'
wp option delete 'inazo_flamingo_auto_trash_outbound_days'
wp option delete 'inazo_flamingo_auto_trash_spam_days'

# Clear Cron Jobs
wp cron event delete 'inazo_flamingo_auto_trash_cron_task_daily'

