#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postscript'

# Delete Transients
wp transient delete 'postscript_scripts_reg'
wp transient delete 'postscript_styles_reg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postscript_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postscript_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postscript_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postscript_meta'"
