#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7s-submissions_version'
wp option delete 'cf7s-submissions_install_time'
wp option delete 'links_updated_date_format'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'

