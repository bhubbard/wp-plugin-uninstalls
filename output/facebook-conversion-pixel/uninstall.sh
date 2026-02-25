#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fca_pc'
wp option delete 'fca_pc_after_upgrade_info'
wp option delete 'fca_pc_no_pixel_dismissed'
wp option delete 'fca_pc_version'
wp option delete 'fca_pc_show_review_notice'

# Clear Cron Jobs
wp cron event delete 'fca_pc_schedule_review_notice'

