#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nora_cta_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nora_cta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nora_cta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nora_cta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nora_cta'"
