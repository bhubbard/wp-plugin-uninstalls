#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'number_of_lines'
wp option delete 'cybersoldier_send_mail_to_opponent'
wp option delete 'cybersoldier_time_to_end'
wp option delete 'cybersoldier_number_of_lines'
wp option delete 'cybersoldier_url_to_infopage'
wp option delete 'cybersoldier_refresh_page_for_opponent'
wp option delete 'cybersoldier_admin_is_player'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invited_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invited_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invited_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invited_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cybersoldierbody_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cybersoldierbody_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cybersoldierbody_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cybersoldierbody_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cybersoldier%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cybersoldier%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cybersoldier%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cybersoldier%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
