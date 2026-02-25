#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'osf_megamenu_item_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'osf_megamenu_item_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'osf_megamenu_item_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'osf_megamenu_item_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opal_elementor_post_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opal_elementor_post_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opal_elementor_post_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opal_elementor_post_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opal_elementor_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opal_elementor_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opal_elementor_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opal_elementor_post_id'"
