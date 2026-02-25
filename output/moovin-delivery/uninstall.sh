#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'sg_del_address_card_title'
wp option delete 'sg_del_address_card_btn_text'
wp option delete 'sg_del_enable_address_picker'
wp option delete 'sg_del_default_lat'
wp option delete 'sg_del_default_long'
wp option delete 'sg_del_allow_user_location'
wp option delete 'sg_del_add_enable_unnamed_error'
wp option delete 'sg_del_add_unnamed_error'
wp option delete 'sg_del_add_title_error'
wp option delete 'sg_del_address_cards_column'
wp option delete 'sg_del_address_custom_styles'
wp option delete 'sg_del_add_new_address_card_btn_text'
wp option delete 'sg_del_add_new_address_form_title'
wp option delete 'sg_del_add_new_address_form_btn_text'
wp option delete 'sg_del_address_type_placeholder'
wp option delete 'sg_del_add_title'
wp option delete 'sg_del_show_address_type'

# Clear Cron Jobs
wp cron event delete 'isa_add_every_three_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'estimation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'estimation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'estimation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'estimation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'package_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'package_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'package_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'package_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moovin_qr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moovin_qr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moovin_qr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moovin_qr'"
