#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'kwsso_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kwsso_user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kwsso_user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kwsso_user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kwsso_user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kwsso_user_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kwsso_user_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kwsso_user_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kwsso_user_attributes'"
