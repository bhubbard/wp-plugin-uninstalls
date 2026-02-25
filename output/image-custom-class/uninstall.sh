#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nivijah_custom_class_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nivijah_custom_class_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nivijah_custom_class_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nivijah_custom_class_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nivijah_custom_class_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nivijah_custom_class_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nivijah_custom_class_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nivijah_custom_class_all'"
