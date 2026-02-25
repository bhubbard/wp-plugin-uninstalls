#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genesis_simple_share_sort'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_gss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_gss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_gss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_gss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gss_alternate_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gss_alternate_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gss_alternate_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gss_alternate_url'"
