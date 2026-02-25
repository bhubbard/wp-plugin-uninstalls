#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vossle_ar_api_key'
wp option delete 'vossle_ar_user_id'
wp option delete 'vos_tryon_button'
wp option delete 'vos_tryon_button_title'
wp option delete 'vos_tryon_button_position'
wp option delete 'vossle_alert_code'
wp option delete 'vossle_alert_msg'
wp option delete 'vossle-plugin-text'
wp option delete 'vos_tryon_button_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vossle_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vossle_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vossle_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vossle_url'"
