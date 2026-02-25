#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtoc_plugin_do_activation_redirect'
wp option delete 'rtoc_title'
wp option delete 'rtoc_title_display'
wp option delete 'rtoc_display'
wp option delete 'rtoc_exclude_post_toc'
wp option delete 'rtoc_exclude_page_toc'
wp option delete 'rtoc_initial_display'
wp option delete 'rtoc_headline_display'
wp option delete 'rtoc_open_text'
wp option delete 'rtoc_close_text'
wp option delete 'rtoc_font'
wp option delete 'rtoc_display_headline_amount'
wp option delete 'rtoc_list_h2_type'
wp option delete 'rtoc_list_h3_type'
wp option delete 'rtoc_color'
wp option delete 'rtoc_title_color'
wp option delete 'rtoc_text_color'
wp option delete 'rtoc_border_color'
wp option delete 'rtoc_h2_color'
wp option delete 'rtoc_h3_color'
wp option delete 'rtoc_back_button_color'
wp option delete 'rtoc_frame_design'
wp option delete 'rtoc_animation'
wp option delete 'rtoc_scroll_animation'
wp option delete 'rtoc_back_toc_button'
wp option delete 'rtoc_display_top'
wp option delete 'rtoc_back_text'
wp option delete 'rtoc_back_button_position'
wp option delete 'rtoc_back_button_vertical_position'
wp option delete 'rtoc_exclude_css'
wp option delete 'rtoc_exclude_openclose'
wp option delete 'rtoc_back_toc_pc'
wp option delete 'rtoc_category_added'
wp option delete 'rtoc_back_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jinr_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jinr_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jinr_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jinr_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jinr_category_edit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jinr_category_edit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jinr_category_edit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jinr_category_edit'"
