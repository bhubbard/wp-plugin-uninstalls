#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accordion-slider-v'
wp option delete 'accordion-slider-type'
wp option delete 'accordion-slider-installDate'
wp option delete 'rpg-slider-images-default'
wp option delete 'asg_cns_review'

# Delete Transients
wp transient delete 'asg_plugins_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accordion-slider-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accordion-slider-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accordion-slider-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accordion-slider-settings'"
