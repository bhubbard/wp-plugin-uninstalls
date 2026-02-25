#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ucgaip_placeholder_text'
wp option delete 'ucgaip_border_radius'
wp option delete 'ucgaip_button_color'
wp option delete 'ucgaip_button_text'
wp option delete 'ucgaip_prompt'
wp option delete 'ucgaip_api_key'
wp option delete 'ucgaip_store_inputs'
wp option delete 'ucgaip_prompt_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ucgaip_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ucgaip_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ucgaip_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ucgaip_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timestamp'"
