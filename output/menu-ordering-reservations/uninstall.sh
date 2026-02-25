#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glf_connection_type'
wp option delete 'glf_mor_installation_id'
wp option delete 'glf_check_old_widgets_elementor'
wp option delete 'glf_mor_restaurant_data'
wp option delete 'glf_wordpress_options'
wp option delete 'glf_plugin_version'
wp option delete 'glf_plugin_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_glf_mor_restaurant_menu%' OR option_name LIKE '_site_transient_glf_mor_restaurant_menu%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_glf_mor_restaurant_opening_hours_%' OR option_name LIKE '_site_transient_glf_mor_restaurant_opening_hours_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_glf_mor_restaurant_promotions_%' OR option_name LIKE '_site_transient_glf_mor_restaurant_promotions_%'"

# Clear Cron Jobs
wp cron event delete 'glf_cron_check_elementor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
