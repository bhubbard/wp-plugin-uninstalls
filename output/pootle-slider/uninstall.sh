#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pootlepb-new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pootlepb-new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pootlepb-new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pootlepb-new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pootle-slider-height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pootle-slider-height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pootle-slider-height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pootle-slider-height'"
