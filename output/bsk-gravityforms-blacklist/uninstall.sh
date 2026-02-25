#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bsk_gfbl_db_ver_'
wp option delete '_bsk_gfbl_db_upgrading_'
wp option delete '_bsk_gfblcv_free_to_pro_done_'
wp option delete '_bsk_gfbl_integrate_cf7_blacklist_done_'
wp option delete '_bsk_gfbl_cf7_blacklist_list_id_mapping_'
wp option delete '_bsk_gfbl_integrate_cf7_blacklist_doing_'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_blacklist_form_list_data_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_blacklist_form_list_data_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_blacklist_form_list_data_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_blacklist_form_list_data_'"
