#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rab-amp-switch'
wp option delete 'rab-switch'
wp option delete 'rab-color'
wp option delete 'rab-post-type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rab-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rab-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rab-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rab-color'"
