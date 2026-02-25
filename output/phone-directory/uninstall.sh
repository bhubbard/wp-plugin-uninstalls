#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'pdhclpage'
wp option delete 'pd_add_new_button'
wp option delete 'pd_add_item_link'
wp option delete 'pd_lan_add_link'
wp option delete 'pd_lan_share_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'pd_map_open_street_map'
wp option delete 'sbd_map_api_key'
wp option delete 'pd_enable_rtl'
wp option delete 'pd_lan_view_site'
wp option delete 'pd_lan_gdpr_policies'
wp option delete 'pd_lan_gdpr_load_map_lang'
wp option delete 'pd_enable_gdpr_policies'
wp option delete 'pd_map_places_api_new'
wp option delete 'sbd_ot_convrt'
wp option delete 'option_tree'
wp option delete 'pd_enable_dark_mode'
wp option delete 'pd_lan_enable_dark_mode'
wp option delete 'pd_lan_dark_mode_on'
wp option delete 'pd_lan_light_mode_on'
wp option delete 'pd_custom_style'
wp option delete 'pd_custom_js'
wp option delete 'pd_enable_top_part'
wp option delete 'pd_lan_provide_location'
wp option delete 'pd_lan_distance_value'
wp option delete 'pd_lan_no_result_found'
wp option delete 'sbd_google_map_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_dismiss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_active_time'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcpnd_list_item01'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcpnd_list_item01'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcpnd_list_item01'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcpnd_list_item01'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcpd_list_item01'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcpd_list_item01'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcpd_list_item01'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcpd_list_item01'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcpd_list_conf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcpd_list_conf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcpd_list_conf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcpd_list_conf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcpnd_list_conf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcpnd_list_conf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcpnd_list_conf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcpnd_list_conf'"
