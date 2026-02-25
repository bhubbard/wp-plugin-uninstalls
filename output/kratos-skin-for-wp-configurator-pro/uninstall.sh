#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_kratos_skin_license_status'
wp option delete 'wpc_kratos_skin_license_key'
wp option delete 'wpc_kratos_group_icon_width'
wp option delete 'wpc_kratos_sub_group_icon_width'
wp option delete 'wpc_kratos_icon_width'
wp option delete 'wpc_kratos_group_icon_height'
wp option delete 'wpc_kratos_sub_group_icon_height'
wp option delete 'wpc_kratos_icon_height'
wp option delete 'wpc_kratos_control_header_title'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpc_config_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpc_config_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpc_config_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpc_config_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpc_config_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpc_config_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpc_config_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpc_config_style'"
