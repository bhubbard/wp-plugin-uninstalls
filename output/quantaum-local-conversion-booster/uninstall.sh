#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qlcb_settings'
wp option delete 'qlcb_daily_counts'
wp option delete 'qlcb_page_counts'
wp option delete 'qlcb_variant_counts'

# Delete Transients
wp transient delete 'qlcb_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'qlcb_prune_counts_event'

