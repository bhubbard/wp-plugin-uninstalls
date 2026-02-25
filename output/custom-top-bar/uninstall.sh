#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_top_bar'
wp option delete 'fixed_top_bar'
wp option delete 'display_contact_number'
wp option delete 'display_email_address'
wp option delete 'top_bar_height'
wp option delete 'top_bar_color'
wp option delete 'contact_number'
wp option delete 'contact_email'
wp option delete 'text_color'
wp option delete 'show_admin_bar'
wp option delete 'button_text'
wp option delete 'acction_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_link'"
