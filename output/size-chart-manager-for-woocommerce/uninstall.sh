#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sizechama_size_chart_position'
wp option delete 'sizechama_layout_style'
wp option delete 'sizechama_sizechart_popup_position'
wp option delete 'sizechama_size_chart_tab_title'
wp option delete 'sizechama_even_row_color'
wp option delete 'sizechama_odd_row_color'
wp option delete 'sizechama_font_text_color'
wp option delete 'sizechama_size_heading_title'
wp option delete 'sizechama_size_guide_content'
wp option delete 'sizechama_table_border_color'
wp option delete 'sizechama_border_size'
wp option delete 'sizechama_size_chart_enable_disable'
wp option delete 'sizechama_product_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size_chart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_selected_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_selected_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_selected_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_selected_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_selected_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_selected_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_selected_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_selected_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_apply_all_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_apply_all_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_apply_all_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_apply_all_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_size_chart_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_size_chart_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_size_chart_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_size_chart_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_grouped_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_grouped_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_grouped_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_grouped_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_hide_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_hide_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_hide_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_hide_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_hide_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_hide_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_hide_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_hide_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sizechama_hide_chart_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sizechama_hide_chart_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sizechama_hide_chart_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sizechama_hide_chart_table'"
