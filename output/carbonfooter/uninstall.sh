#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbonfooter_greenhost'
wp option delete 'carbonfooter_last_processed'
wp option delete 'active_sitewide_plugins'
wp option delete 'carbonfooter_widget_background_color'
wp option delete 'carbonfooter_widget_text_color'
wp option delete 'carbonfooter_display_setting'
wp option delete 'carbonfooter_widget_style'
wp option delete 'carbonfooter_average_emissions'

# Delete Transients
wp transient delete 'carbonfooter_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_carbonfooter_processing_%' OR option_name LIKE '_site_transient_carbonfooter_processing_%'"

# Clear Cron Jobs
wp cron event delete 'carbonfooter_process_emissions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carbon_emissions_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carbon_emissions_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carbon_emissions_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carbon_emissions_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carbon_emissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carbon_emissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carbon_emissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carbon_emissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carbon_resources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carbon_resources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carbon_resources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carbon_resources'"
