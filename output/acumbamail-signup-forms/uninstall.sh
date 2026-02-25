#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acumbamail_options'
wp option delete 'custom_user_logged_in'
wp option delete 'acumba_widget_fields'
wp option delete 'acumba_chosen_list'
wp option delete 'acumba_ordered_fields'
wp option delete 'theme_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acumba_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acumba_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acumba_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acumba_subscribe'"
