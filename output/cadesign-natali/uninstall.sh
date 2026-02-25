#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'last_natali_sync_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_pa_natali_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_pa_natali_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_pa_natali_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_pa_natali_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_pa_natali_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_pa_natali_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_pa_natali_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_pa_natali_color'"
