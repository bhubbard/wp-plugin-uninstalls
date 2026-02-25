#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'a3_portfolio_version'
wp option delete 'portfolio_page_id'
wp option delete 'a3_portfolio_just_installed'
wp option delete 'a3_portfolios_style_version'
wp option delete 'portfolio_inner_container_single_main_image_width_reset'
wp option delete 'a3_portfolio_permalinks'
wp option delete 'a3_portfolio_global_settings'
wp option delete 'a3_portfolio_global_item_expander_settings'
wp option delete 'a3_portfolio_item_cards_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'a3_portfolio_item_posts_settings'
wp option delete 'a3_portfolio_shortcodes_setting'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"
wp transient delete 'a3_portfolio_addons_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolio_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolio_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolio_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolio_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bg-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bg-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bg-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bg-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'border-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'border-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'border-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'border-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_card_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_card_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_card_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_card_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_viewmore_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_viewmore_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_viewmore_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_viewmore_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_launch_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_launch_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_launch_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_launch_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_launch_site_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_launch_site_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_launch_site_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_launch_site_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_launch_open_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_launch_open_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_launch_open_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_launch_open_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_meta_layout_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_meta_layout_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_meta_layout_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_meta_layout_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_meta_gallery_wide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_meta_gallery_wide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_meta_gallery_wide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_meta_gallery_wide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_portfolio_meta_thumb_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_portfolio_meta_thumb_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_portfolio_meta_thumb_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_portfolio_meta_thumb_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active_portfolio_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active_portfolio_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active_portfolio_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active_portfolio_taxonomy'"
