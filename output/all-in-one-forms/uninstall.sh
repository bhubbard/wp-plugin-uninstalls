#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aio_fonts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dont_show_again'"
wp option delete 'rnaio_dont_show_again'
wp option delete 'aio_review_stage'
wp option delete 'aio_license'

# Clear Cron Jobs
wp cron event delete 'allinoneforms_delete_expired_items'

