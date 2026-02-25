#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'woo_variation_duplicator_cloned_ids'
wp transient delete 'woo_variation_duplicator_exceed_clone_limit'
wp transient delete 'woo_variation_duplicator_image_cloned'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
