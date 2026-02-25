#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ignore_bti79_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icl_lang_duplicate_of'"
