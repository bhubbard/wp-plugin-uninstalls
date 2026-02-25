#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sizepsgf_size_chart_position'
wp option delete 'sizepsgf_layout_style'
wp option delete 'sizepsgf_sizechart_popup_position'
wp option delete 'sizepsgf_size_chart_tab_title'
wp option delete 'sizepsgf_even_row_color'
wp option delete 'sizepsgf_odd_row_color'
wp option delete 'sizepsgf_font_text_color'
wp option delete 'sizepsgf_size_heading_title'
wp option delete 'sizepsgf_size_guide_content'
wp option delete 'sizepsgf_table_border_color'
wp option delete 'sizepsgf_border_size'
wp option delete 'sizepsgf_popup_btnbg_color'
wp option delete 'sizepsgf_popup_btntext_color'
wp option delete 'sizepsgf_popup_btnicon_color'
wp option delete 'sizepsgf_containerbg_color'
wp option delete 'sizepsgf_btn_font_size'
wp option delete 'sizepsgf_btn_padding'
wp option delete 'sizepsgf_size_guide_custom_css'
wp option delete 'sizepsgf_table_head_bg_color'
wp option delete 'sizepsgf_table_head_font_color'
wp option delete 'sizepsgf_size_chart_enable_disable'
wp option delete 'sizepsgf_product_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sizepsgf_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sizepsgf_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sizepsgf_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sizepsgf_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sizepsgf_chart_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sizepsgf_chart_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sizepsgf_chart_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sizepsgf_chart_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sizepsgf_popup_icon_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sizepsgf_popup_icon_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sizepsgf_popup_icon_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sizepsgf_popup_icon_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sizepsgf_layout_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sizepsgf_layout_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sizepsgf_layout_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sizepsgf_layout_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_selected_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_selected_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_selected_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_selected_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_selected_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_selected_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_selected_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_selected_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_apply_all_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_apply_all_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_apply_all_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_apply_all_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_size_chart_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_size_chart_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_size_chart_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_size_chart_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_grouped_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_grouped_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_grouped_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_grouped_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_hide_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_hide_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_hide_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_hide_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_hide_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_hide_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_hide_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_hide_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizepsgf_hide_chart_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizepsgf_hide_chart_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizepsgf_hide_chart_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizepsgf_hide_chart_table'"
