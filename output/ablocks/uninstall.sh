#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ablocks_frontend_dashboard_sub_pages'
wp option delete 'ablocks_first_install_time'
wp option delete 'insightsforwp_sent_data'
wp option delete 'ablocks_need_activation_redirect'
wp option delete 'ablocks_has_required_block_attribute_migration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'ablocks_version'
wp option delete 'ablocks_fonts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ablocks_tb_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ablocks_tb_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ablocks_tb_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ablocks_tb_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ablocks_dismiss_offer_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ablocks_dismiss_offer_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ablocks_dismiss_offer_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ablocks_dismiss_offer_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ablocks_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ablocks_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ablocks_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ablocks_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ablock_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ablock_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ablock_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ablock_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ablocks_demo_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ablocks_demo_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ablocks_demo_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ablocks_demo_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
