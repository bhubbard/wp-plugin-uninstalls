#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CW_qr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CW_qr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CW_qr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CW_qr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CW_sr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CW_sr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CW_sr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CW_sr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activate_function'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activate_function'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activate_function'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activate_function'"
