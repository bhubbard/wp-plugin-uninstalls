#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixfields_settings'
wp option delete 'rewrite_rules'
wp option delete 'custom_body_class_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_body_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_body_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_body_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_body_class'"
