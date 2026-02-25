#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_permalink_structure'"
wp option delete 'custom_domains_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_permalink'"
