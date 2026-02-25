#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'made_by_fourlogin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'made_by_fourlogin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'made_by_fourlogin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'made_by_fourlogin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fourlogin_login_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fourlogin_login_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fourlogin_login_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fourlogin_login_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fourlogin_sent_fourlogincode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fourlogin_sent_fourlogincode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fourlogin_sent_fourlogincode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fourlogin_sent_fourlogincode'"
