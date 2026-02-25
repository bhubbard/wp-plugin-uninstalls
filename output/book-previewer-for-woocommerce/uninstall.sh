#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpfw_version'
wp option delete 'bpfw_fix_conflict_read_book_addons_for_book_store'

# Delete Transients
wp transient delete 'bpfw_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfw_back_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfw_back_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfw_back_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfw_back_img'"
