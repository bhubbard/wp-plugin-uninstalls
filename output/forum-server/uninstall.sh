#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vasthtml_options'
wp option delete 'wpf_mod_option_vers'
wp option delete 'wpf_widget'
wp option delete 'wpf_topic_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_useroptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_useroptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_useroptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_useroptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_moderator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_moderator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_moderator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_moderator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastvisit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastvisit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastvisit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastvisit'"
