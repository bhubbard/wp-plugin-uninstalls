#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link_footnotes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lf_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lf_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lf_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lf_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lf_off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lf_off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lf_off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lf_off'"
