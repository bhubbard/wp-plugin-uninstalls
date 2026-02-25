#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nwm_settings'
wp option delete 'nwm_post_ids'
wp option delete 'nwm_route_order'
wp option delete 'nwm_map_ids'
wp option delete 'nwm_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nwm_locations_%' OR option_name LIKE '_site_transient_nwm_locations_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nwm_route_list_%' OR option_name LIKE '_site_transient_nwm_route_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nwm_widget_%' OR option_name LIKE '_site_transient_nwm_widget_%'"
wp transient delete 'nwm_locations'

