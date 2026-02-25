#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharingTrello_key'
wp option delete 'sharingTrello_token'
wp option delete 'sharingTrello_board_id_sentaku'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_board_list_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_label_list_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sharingTrello_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sharingTrello_post_%'"
wp option delete 'sharingTrello_post_board_list_id'
wp option delete 'sharingTrello_post_label_list_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trello_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trello_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trello_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trello_id'"
