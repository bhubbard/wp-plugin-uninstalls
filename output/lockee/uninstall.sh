#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lockee_settings'
wp option delete 'lockee_settings_visited'
wp option delete 'lockee_slug_base'
wp option delete 'lockee_post_type_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_open'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_open'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_open'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_open'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lockee_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lockee_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lockee_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lockee_code'"
