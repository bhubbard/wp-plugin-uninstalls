#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_experiment-gutenberg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transient_block_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transient_block_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transient_block_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transient_block_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transient_block_supports_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transient_block_supports_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transient_block_supports_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transient_block_supports_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transient_block_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transient_block_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transient_block_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transient_block_extra'"
