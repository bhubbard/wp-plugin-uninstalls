#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptq_settings'

# Delete Transients
wp transient delete 'ptq_queued_existence'

# Clear Cron Jobs
wp cron event delete 'ptq_single_event_reschedule'
wp cron event delete 'ptq_single_event_maybe_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_queue_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_queue_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_queue_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_queue_order'"
