#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dm_recaptcha'
wp option delete 'dm_API_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_endpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'dm_API_credentials'
wp option delete 'dm_API_address_books'
wp option delete 'dm_API_data_fields'
wp option delete 'dm_redirections'
wp option delete 'dm_api_endpoint'
wp option delete 'widget_dm_widget'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dm_recaptcha_temp_values_%' OR option_name LIKE '_site_transient_dm_recaptcha_temp_values_%'"
wp transient delete 'dotdigital_wordpress_api_data_fields'
wp transient delete 'dotdigital_wordpress_api_lists'

# Clear Cron Jobs
wp cron event delete 'integration_insights'

