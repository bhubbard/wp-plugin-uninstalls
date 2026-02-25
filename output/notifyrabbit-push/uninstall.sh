#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifyrabbit_push_verified'
wp option delete 'notifyrabbit_push_configuration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifyrabbit_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifyrabbit_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifyrabbit_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifyrabbit_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifyrabbit_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifyrabbit_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifyrabbit_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifyrabbit_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifyrabbit_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifyrabbit_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifyrabbit_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifyrabbit_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifyrabbit_force'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifyrabbit_force'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifyrabbit_force'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifyrabbit_force'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifyrabbit_sent_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifyrabbit_sent_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifyrabbit_sent_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifyrabbit_sent_hash'"
