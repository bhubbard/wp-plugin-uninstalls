#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdv_category_image_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rdv_category_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rdv_category_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rdv_category_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rdv_category_image_id'"
