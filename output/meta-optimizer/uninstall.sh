#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_meta_optimizer'
wp option delete 'wp_meta_optimizer_version'

# Clear Cron Jobs
wp cron event delete 'import_metas_wpmo'

