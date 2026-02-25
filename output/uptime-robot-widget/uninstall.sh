#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uptimerobot_apikey'
wp option delete 'uptimerobot_show_ratio'
wp option delete 'uptimerobot_custom_period'
wp option delete 'uptimerobot_show_psp_link'
wp option delete 'uptimerobot_psp_url'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uptimerobot_widget_cache_%' OR option_name LIKE '_site_transient_uptimerobot_widget_cache_%'"
wp transient delete 'uptimerobot_widget_cache'

