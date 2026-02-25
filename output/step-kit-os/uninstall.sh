#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'step_kit_os_settings'

# Delete Transients
wp transient delete 'step_kit_os_settings_cache'
wp transient delete 'step_kit_os_button_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_persistent_cart_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_persistent_cart_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_persistent_cart_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_persistent_cart_contents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_step_kit_os_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_step_kit_os_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_step_kit_os_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_step_kit_os_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_step_kit_os_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_step_kit_os_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_step_kit_os_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_step_kit_os_version'"
