#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'nc_bb_sm_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__nc_bb_sm_front-%' OR option_name LIKE '_site_transient__nc_bb_sm_front-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_bb_sm_class_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_bb_sm_class_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_bb_sm_class_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_bb_sm_class_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_bb_sm_definition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_bb_sm_definition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_bb_sm_definition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_bb_sm_definition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_bb_sm_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_bb_sm_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_bb_sm_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_bb_sm_front'"
