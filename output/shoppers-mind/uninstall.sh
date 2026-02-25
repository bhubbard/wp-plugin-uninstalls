#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ceneje_shop_id'
wp option delete 'ceneje_badge_enabled'
wp option delete 'ceneje_popup_enabled'
wp option delete 'ceneje_floater_enabled'
wp option delete 'ceneje_xml_url'
wp option delete 'ceneje_exclude_out_of_stock'
wp option delete 'ceneje_gender_attribute'
wp option delete 'ceneje_color_attribute'
wp option delete 'ceneje_size_attribute'
wp option delete 'ceneje_agegroup_attribute'
wp option delete 'ceneje_brand_attribute'
wp option delete 'ceneje_delivery_cost'
wp option delete 'ceneje_free_delivery_above'
wp option delete 'ceneje_delivery_time_min'
wp option delete 'ceneje_delivery_time_max'
wp option delete 'ceneje_popup_page'

