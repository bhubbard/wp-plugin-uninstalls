#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfc-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_verdict'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_verdict'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_verdict'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_verdict'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_explainer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_explainer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_explainer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_explainer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfc_author_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfc_author_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfc_author_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfc_author_type'"
