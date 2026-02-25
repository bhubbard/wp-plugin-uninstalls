#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pt_cv_version_pro'
wp option delete 'active_sitewide_plugins'
wp option delete 'opd_external_plugins'
wp option delete 'cv_pretty_pagination_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Clear Cron Jobs
wp cron event delete 'contentviews_block_cron'

