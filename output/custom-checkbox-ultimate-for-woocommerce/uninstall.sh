#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icwcu_custom_services_title'
wp option delete 'icwcu_custom_radioservices_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icwcu_custom_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icwcu_custom_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icwcu_custom_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icwcu_custom_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icwcu_custom_servicesradio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icwcu_custom_servicesradio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icwcu_custom_servicesradio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icwcu_custom_servicesradio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icwcu_custom_services_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icwcu_custom_services_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icwcu_custom_services_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icwcu_custom_services_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icwcu_custom_radioservices_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icwcu_custom_radioservices_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icwcu_custom_radioservices_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icwcu_custom_radioservices_title'"
