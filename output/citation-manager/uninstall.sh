#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cit_introtext'
wp option delete 'cit_outrotext'
wp option delete 'cit_targetblank'
wp option delete 'cit_sortorder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'citation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'citation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'citation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'citation'"
