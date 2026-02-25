#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dqcb_settings'
wp option delete 'dqcb_install_date'
wp option delete 'dqcb_review_notice_dismissed_permanently'
wp option delete 'dqcb_review_notice_dismissed_time'

