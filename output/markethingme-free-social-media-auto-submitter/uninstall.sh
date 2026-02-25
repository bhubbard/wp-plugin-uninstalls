#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-mm-fb-likes-enabled'
wp option delete 'wp-mm-fb-likes-num-from'
wp option delete 'wp-mm-fb-likes-num-to'
wp option delete 'wp-mm-fb-likes-duration-from'
wp option delete 'wp-mm-fb-likes-duration-to'
wp option delete 'wp-mm-fb-likes-weekends'
wp option delete 'wp-mm-fb-shares-enabled'
wp option delete 'wp-mm-fb-shares-num-from'
wp option delete 'wp-mm-fb-shares-num-to'
wp option delete 'wp-mm-fb-shares-duration-from'
wp option delete 'wp-mm-fb-shares-duration-to'
wp option delete 'wp-mm-fb-shares-weekends'
wp option delete 'wp-mm-google-plus-enabled'
wp option delete 'wp-mm-google-plus-num-from'
wp option delete 'wp-mm-google-plus-num-to'
wp option delete 'wp-mm-google-plus-duration-from'
wp option delete 'wp-mm-google-plus-duration-to'
wp option delete 'wp-mm-google-plus-weekends'
wp option delete 'wp-mm-tweets-enabled'
wp option delete 'wp-mm-tweets-num-from'
wp option delete 'wp-mm-tweets-num-to'
wp option delete 'wp-mm-tweets-duration-from'
wp option delete 'wp-mm-tweets-duration-to'
wp option delete 'wp-mm-api-key'
wp option delete 'wp-mm-tweets-weekends'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-likes-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-likes-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-likes-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-likes-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-likes-num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-likes-num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-likes-num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-likes-num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-likes-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-likes-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-likes-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-likes-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-likes-weekends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-likes-weekends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-likes-weekends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-likes-weekends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-shares-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-shares-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-shares-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-shares-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-shares-num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-shares-num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-shares-num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-shares-num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-shares-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-shares-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-shares-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-shares-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-shares-weekends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-shares-weekends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-shares-weekends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-shares-weekends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-google-plus-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-google-plus-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-google-plus-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-google-plus-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-google-plus-num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-google-plus-num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-google-plus-num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-google-plus-num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-google-plus-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-google-plus-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-google-plus-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-google-plus-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-google-plus-weekends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-google-plus-weekends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-google-plus-weekends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-google-plus-weekends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-twitter-tweets-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-twitter-tweets-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-twitter-tweets-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-twitter-tweets-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-twitter-tweets-num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-twitter-tweets-num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-twitter-tweets-num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-twitter-tweets-num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-twitter-tweets-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-twitter-tweets-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-twitter-tweets-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-twitter-tweets-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-twitter-tweets-weekends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-twitter-tweets-weekends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-twitter-tweets-weekends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-twitter-tweets-weekends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-likes-task-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-likes-task-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-likes-task-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-likes-task-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-fb-shares-task-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-fb-shares-task-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-fb-shares-task-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-fb-shares-task-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-google-plus-task-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-google-plus-task-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-google-plus-task-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-google-plus-task-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-mm-twitter-tweets-task-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-mm-twitter-tweets-task-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-mm-twitter-tweets-task-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-mm-twitter-tweets-task-id'"
