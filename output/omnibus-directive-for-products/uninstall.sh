#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woomnibus_option'
wp option delete 'new_option_name'
wp option delete 'some_other_option'
wp option delete 'option_etc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date'"
