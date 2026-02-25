#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owcpv_form_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owcpv_form_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owcpv_form_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owcpv_form_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owcpv_settings_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owcpv_settings_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owcpv_settings_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owcpv_settings_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owcpv_json_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owcpv_json_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owcpv_json_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owcpv_json_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owcpv_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owcpv_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owcpv_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owcpv_form'"
