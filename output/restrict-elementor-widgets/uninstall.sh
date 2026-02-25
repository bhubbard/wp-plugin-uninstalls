#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codexpert-blog-json'
wp option delete 'restrict-elementor-widgets-docs-json'
wp option delete '_site_transient_update_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'restrict-elementor-widgets_daily'
wp cron event delete 'pluggable-daily'

