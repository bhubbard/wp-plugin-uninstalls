#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a1tools_cache_expiry'
wp option delete 'a1tools_form_enabled'
wp option delete 'a1tools_form_secret'
wp option delete 'a1tools_form_board_id'
wp option delete 'a1tools_form_group_id'

# Delete Transients
wp transient delete 'a1tools_site_variables'

# Clear Cron Jobs
wp cron event delete 'a1tools_cache_refresh'

