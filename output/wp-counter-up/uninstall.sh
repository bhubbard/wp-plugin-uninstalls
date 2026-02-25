#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'lgx_counter_plugin_clicked'
wp transient delete 'lgx_counter_pro_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lgxmilestonemeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lgxmilestonemeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lgxmilestonemeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lgxmilestonemeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_save_meta_lgx_counter_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_save_meta_lgx_counter_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_save_meta_lgx_counter_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_save_meta_lgx_counter_generator'"
