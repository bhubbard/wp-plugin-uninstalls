#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_card_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_card_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_card_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_card_details'"
