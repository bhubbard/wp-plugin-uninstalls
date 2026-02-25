#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect_after_login'
wp option delete 'name'
wp option delete 'bg_custom_color'
wp option delete 'text_custom_color'
wp option delete 'bo_custom_color'
wp option delete 'link_custom_color'
wp option delete 'pop_custom_color'
wp option delete 'label_custom_color'
wp option delete 'add_telephone_number'
wp option delete 'redirect_after_logout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_contact_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_contact_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_contact_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_contact_no'"
