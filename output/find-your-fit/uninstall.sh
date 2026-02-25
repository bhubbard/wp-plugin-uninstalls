#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fyffwSelectVariation'
wp option delete 'fyffwSelectCategory'
wp option delete 'fyffwSelectStyle'
wp option delete 'fyffwSelectLocation'
wp option delete 'fyffwSizeLocation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fyffw_size_adjustment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fyffw_size_adjustment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fyffw_size_adjustment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fyffw_size_adjustment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fyffw_button_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fyffw_button_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fyffw_button_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fyffw_button_visibility'"
