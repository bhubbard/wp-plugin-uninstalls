#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwps_view_per_page'
wp option delete 'dwps_disable_default_styles'
wp option delete 'dwps_tab_title'
wp option delete 'dwps_wc_default_specs'
wp option delete 'dwps_options'

# Delete Transients
wp transient delete 'dwspecs_data_migrating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attr_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attr_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attr_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attr_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attr_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attr_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attr_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attr_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attr_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attr_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attr_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attr_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attr_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attr_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attr_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attr_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'old_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'old_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'old_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'old_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dwps_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dwps_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dwps_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dwps_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dwps_specification_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dwps_specification_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dwps_specification_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dwps_specification_table'"
