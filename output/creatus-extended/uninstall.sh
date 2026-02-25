#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thz:builder:tpl:last:update'
wp option delete 'thz_fontsquirrel_fonts'
wp option delete 'thz_fontsquirrel_classifications'
wp option delete 'thz_imported_fonts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thz_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thz_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thz_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thz_image_id'"
