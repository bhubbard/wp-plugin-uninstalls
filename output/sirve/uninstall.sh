#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sirve_permalink_base'
wp option delete 'sirve_category_permalink_base'
wp option delete 'sirve_tag_permalink_base'
wp option delete 'sirve_event_permalink_base'
wp option delete 'sirve_use_theme_archive'
wp option delete 'sirve_archive_page_width'
wp option delete 'sirve_archive_page_style'
wp option delete 'sirve_single_page'
wp option delete 'sirve_single_page_button_link_enable'
wp option delete 'sirve_post_grid_word'
wp option delete 'sirve_par_pages'
wp option delete 'sirve_post_order'
wp option delete 'sirve_post_order_by'
wp option delete 'sirve_frontend_menu_text'
wp option delete 'sirve_button_one_text'
wp option delete 'sirve_single_page_button_text'
wp option delete 'sirve_archive_page_image'
wp option delete 'sirve_archive_page_title'
wp option delete 'sirve_archive_page_description'
wp option delete 'sirve_archive_page_category'
wp option delete 'sirve_archive_page_tags'
wp option delete 'sirve_archive_page_buttons'
wp option delete 'sirve_category_archive_page_image'
wp option delete 'sirve_category_archive_page_title'
wp option delete 'sirve_category_archive_page_description'
wp option delete 'sirve_category_archive_page_category'
wp option delete 'sirve_category_archive_page_tags'
wp option delete 'sirve_category_archive_page_buttons'
wp option delete 'sirve_fontend_category_lable'
wp option delete 'sirve_fontend_tag_lable'
wp option delete 'sirve_fontend_category_and_tag_separator'
wp option delete 'sirve_button_1_text_color'
wp option delete 'sirve_button_1_text_hover_color'
wp option delete 'sirve_button_1_bg_color'
wp option delete 'sirve_button_1_bg_hover_color'
wp option delete 'sirve_button_1_boder_color'
wp option delete 'sirve_button_2_text_color'
wp option delete 'sirve_button_2_text_hover_color'
wp option delete 'sirve_button_2_bg_color'
wp option delete 'sirve_button_2_bg_hover_color'
wp option delete 'sirve_button_2_boder_color'
wp option delete 'sirve_coustom_css'
wp option delete 'sirve_show_par_click'
wp option delete 'sirve_titel_limit'
wp option delete 'sirve_flush_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveFeaturePost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveFeaturePost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveFeaturePost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveFeaturePost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footer_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footer_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footer_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footer_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sirveGroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sirveGroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sirveGroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sirveGroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveFeatureText'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveFeatureText'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveFeatureText'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveFeatureText'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonText'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonText'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonText'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonText'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonUrlTarget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonUrlTarget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonUrlTarget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonUrlTarget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveDoFollowPostBtn1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveDoFollowPostBtn1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveDoFollowPostBtn1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveDoFollowPostBtn1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonText2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonText2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonText2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonText2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonUrl2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonUrl2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonUrl2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonUrl2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveButtonUrlTarget2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveButtonUrlTarget2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveButtonUrlTarget2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveButtonUrlTarget2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htSirveDoFollowPostBtn2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htSirveDoFollowPostBtn2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htSirveDoFollowPostBtn2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htSirveDoFollowPostBtn2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
