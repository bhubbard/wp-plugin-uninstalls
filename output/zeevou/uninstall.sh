#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeevou_access_token'
wp option delete 'zeevou_refresh_token'
wp option delete 'zeevou_url'
wp option delete 'zeevou_city_name'
wp option delete 'zeevou_city_radio'
wp option delete 'zeevou_border_radius'
wp option delete 'zeevou_align_radio'
wp option delete 'zeevou_max_width'
wp option delete 'zeevou_default_acc_duration'
wp option delete 'zeevou_default_adults_no'
wp option delete 'zeevou_default_children_no'
wp option delete 'zeevou_default_infants_no'
wp option delete 'zeevou_plugin_version'
wp option delete 'zeevou_token_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_property'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_property'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_property'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_property'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zv-property-metabox-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zv-property-metabox-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zv-property-metabox-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zv-property-metabox-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zv-metabox-property-name-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zv-metabox-property-name-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zv-metabox-property-name-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zv-metabox-property-name-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_property_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_property_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_property_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_property_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_brand_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_brand_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_brand_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_brand_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeevou_property_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeevou_property_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeevou_property_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeevou_property_page'"
