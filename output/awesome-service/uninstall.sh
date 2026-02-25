#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awesome_service_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awesome_service_pl_ser_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awesome_service_pl_ser_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awesome_service_pl_ser_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awesome_service_pl_ser_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awesome_service_pl_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awesome_service_pl_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awesome_service_pl_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awesome_service_pl_icon'"
