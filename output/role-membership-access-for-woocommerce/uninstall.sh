#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrma_default_primary_cat'
wp option delete 'wrma_category_strategy'
wp option delete 'wrma_restricted_message'
wp option delete 'wrma_redirect_enabled'
wp option delete 'wrma_redirect_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wrma_access_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wrma_access_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wrma_access_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wrma_access_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wrma_allowed_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wrma_allowed_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wrma_allowed_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wrma_allowed_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wrma_primary_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wrma_primary_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wrma_primary_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wrma_primary_cat'"
