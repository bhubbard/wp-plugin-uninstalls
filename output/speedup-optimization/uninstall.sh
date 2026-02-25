#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iox_settings'
wp option delete 'speedup01_image_optimizer'
wp option delete 'speedup01_activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_iox_bulk_optimize_result_%' OR option_name LIKE '_site_transient_iox_bulk_optimize_result_%'"

# Clear Cron Jobs
wp cron event delete 'speedup01_cron_hook'

