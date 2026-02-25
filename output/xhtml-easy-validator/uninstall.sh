#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xhtml_easy_validator_method'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_validatore_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_validatore_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_validatore_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_validatore_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_validatore_Errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_validatore_Errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_validatore_Errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_validatore_Errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_validatore_Warnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_validatore_Warnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_validatore_Warnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_validatore_Warnings'"
