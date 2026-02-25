#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activity_log_db_version'

# Delete Transients
wp transient delete 'elementor_site_mailer_campaign'
wp transient delete 'elementor_image_optimization_campaign'

# Clear Cron Jobs
wp cron event delete 'aal/maintenance/clear_old_items'

