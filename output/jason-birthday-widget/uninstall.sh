#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option1'
wp option delete 'option2'
wp option delete 'option3'
wp option delete 'jason_bd_db_version'
wp option delete 'jason_miembros_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bday_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bday_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bday_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bday_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bday_show_to_others'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bday_show_to_others'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bday_show_to_others'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bday_show_to_others'"
