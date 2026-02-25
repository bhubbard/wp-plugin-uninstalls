#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atomica_vision_auth_token'
wp option delete 'atomica_vision_try_on_button_text'
wp option delete 'atomica_vision_try_on_close_button_text'
wp option delete 'atomica_vision_try_on_button_position'
wp option delete 'atomica_vision_try_on_auto_start'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atomica_vision_product_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atomica_vision_product_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atomica_vision_product_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atomica_vision_product_color'"
