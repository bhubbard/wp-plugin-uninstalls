#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplpv-post-view-count'
wp option delete 'wplpv-post-view-count-unit'
wp option delete 'wplpv-redirect-on-limit'
wp option delete 'wplpv-redirect-location'
wp option delete 'wplpv-use-js'
wp option delete 'wplpv-using-pmppro'
wp option delete 'wplpv-db-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wplpv_post_view_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wplpv_pmppro_limit_%'"
wp option delete 'pmprolpv_redirect_page'

# Clear Cron Jobs
wp cron event delete 'wplpv_daily'

