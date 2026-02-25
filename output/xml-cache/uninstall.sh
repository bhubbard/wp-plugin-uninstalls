#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xml_cache_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xml_cache_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xml_cache_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xml_cache_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xml_cache_enabled'"
