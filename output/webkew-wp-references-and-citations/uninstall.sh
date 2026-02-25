#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webkewrc_references_citations_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webkewrc_wp_references_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webkewrc_wp_references_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webkewrc_wp_references_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webkewrc_wp_references_field'"
