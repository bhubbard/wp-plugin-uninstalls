#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyklodev_autosummary_border'
wp option delete 'cyklodev_autosummary_border_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cyklodev_abstract'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cyklodev_abstract'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cyklodev_abstract'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cyklodev_abstract'"
