#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7cc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7cc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7cc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7cc_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7wpms_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7wpms_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7wpms_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7wpms_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7wpms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7wpms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7wpms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7wpms'"
