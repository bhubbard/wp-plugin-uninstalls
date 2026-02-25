#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edcal_default_time'
wp option delete 'edcal_default_status'
wp option delete 'edcal_custom_posts_public'
wp option delete 'edcal_count'
wp option delete 'edcal_do_feedback'
wp option delete 'edcal_weeks_pref'
wp option delete 'edcal_author_pref'
wp option delete 'edcal_time_pref'
wp option delete 'edcal_wheelscroll_pref'
wp option delete 'edcal_status_pref'

