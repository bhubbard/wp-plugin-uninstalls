#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfbf_other'
wp option delete 'cfbf_edit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timeline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timeline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timeline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timeline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfbf1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfbf1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfbf1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfbf1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfbf2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfbf2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfbf2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfbf2'"
