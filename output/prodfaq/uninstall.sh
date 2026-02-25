#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prodfaq_position'
wp option delete 'prodfaq_design'
wp option delete 'prodfaq_enabled'
wp option delete 'prodfaq_hide_out_of_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prodfaq_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prodfaq_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prodfaq_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prodfaq_items'"
