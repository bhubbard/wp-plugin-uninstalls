#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'make-me-static-change'
wp option delete 'make-me-static-uuid'
wp option delete 'make-me-static-last'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'make_me_static_host_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'make_me_static_host_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'make_me_static_host_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'make_me_static_host_ids'"
