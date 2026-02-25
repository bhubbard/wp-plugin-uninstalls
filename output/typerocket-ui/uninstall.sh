#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'typerocket_registered'
wp option delete '_typerocket_site_state_changed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
