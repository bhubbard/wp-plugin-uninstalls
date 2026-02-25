#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'articleai_api_key'
wp option delete 'articleai_queues'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'articleai_queue_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'articleai_frequency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'old_args_%'"
wp option delete 'cron'

