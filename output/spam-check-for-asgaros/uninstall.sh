#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spam_check_for_asgaros_show_activation_notice'
wp option delete 'spam_check_for_asgaros_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asgarosforum_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asgarosforum_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asgarosforum_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asgarosforum_role'"
