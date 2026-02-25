#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_pbat_enable_tab'
wp option delete 'wc_pbat_schema_markup'
wp option delete 'wc_pbat_default_brand_label'
wp option delete 'wc_pbat_tab_priority'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
