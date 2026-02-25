#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'servicebox_default_Settings'
wp option delete 'wpsm_service_b_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_servicebox_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_servicebox_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_servicebox_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_servicebox_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_servicebox_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_servicebox_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_servicebox_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_servicebox_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Wpsm_Servicebox_Shortcode_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Wpsm_Servicebox_Shortcode_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Wpsm_Servicebox_Shortcode_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Wpsm_Servicebox_Shortcode_Settings'"
