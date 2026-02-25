#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pc_global_settings'
wp option delete 'dplab_ps_global_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dplab_ps_part_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dplab_ps_part_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dplab_ps_part_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dplab_ps_part_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dplab_ps_is_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dplab_ps_is_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dplab_ps_is_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dplab_ps_is_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dplab_ps_layout_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dplab_ps_layout_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dplab_ps_layout_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dplab_ps_layout_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dplab_ps_layout_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dplab_ps_layout_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dplab_ps_layout_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dplab_ps_layout_conditions'"
