#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'necessary-blocks-active'
wp option delete 'openai'
wp option delete 'necessary-blocks-deactive'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs

