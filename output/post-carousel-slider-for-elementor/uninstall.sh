#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_ps_custom_css'
wp option delete 'wb_ps_custom_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_ps_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_ps_deactivation_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_ps_deactivation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_ps_deactivation_main_reason_%'"
wp option delete 'pdpcs_installed_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
