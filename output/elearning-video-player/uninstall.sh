#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videolink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videolink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videolink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videolink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popuptime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popuptime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popuptime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popuptime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizz'"
