#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woodecor_options1'
wp option delete 'woodecor_options2'
wp option delete 'woodecor_hidenotice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecor_login_notice_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecor_login_notice_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecor_login_notice_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecor_login_notice_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecor_show_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecor_show_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecor_show_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecor_show_notice'"
