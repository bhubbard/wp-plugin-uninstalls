#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a3rev_rslider_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp option delete 'a3rev_rslider_just_installed'
wp option delete 'a3_responsive_slider_style_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'a3_rslider_template_1'
wp option delete 'a3_rslider_template_2'
wp option delete 'a3_rslider_template_card'
wp option delete 'a3_rslider_template_widget'
wp option delete 'a3_rslider_template_mobile'
wp option delete 'a3_rslider_template1_control_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'a3_rslider_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dimensions_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slider_styles_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_control_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pager_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_caption_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_readmore_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_settings'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_slider_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_slider_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_slider_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_slider_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_slider_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_slider_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_slider_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_slider_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_slider_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_slider_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_slider_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_slider_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a3_slider_is_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a3_slider_is_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a3_slider_is_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a3_slider_is_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_a3_slider_is_used_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_a3_slider_is_used_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_a3_slider_is_used_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_a3_slider_is_used_%'"
