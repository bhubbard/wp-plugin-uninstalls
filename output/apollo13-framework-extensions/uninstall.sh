#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a13fe_import_by_http'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_processed_demo_import'"
wp option delete 'sidebars_widgets'
wp option delete '_elementor_global_css'
wp option delete 'a13_force_to_flush'
wp option delete 'addtoany_options'
wp option delete 'wpforms_settings'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'a13_user_css_update'
wp option delete 'apollo13_grid_elements_loaded'
wp option delete 'widget_recent_albums'
wp option delete 'widget_recent_works'
wp option delete 'widget_filter'
wp option delete 'widget_recent_entries'
wp option delete 'widget_popular_entries'
wp option delete 'widget_related_entries'
wp option delete 'widget_contact_info'
wp option delete 'widget_a13_social_icons'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_vc_page_welcome_redirect'
wp transient delete '_wc_activation_redirect'
wp transient delete 'wpforms_activation_redirect'
wp transient delete 'a13_import_content_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_mega_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_mega_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_mega_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_mega_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_mm_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_mm_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_mm_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_mm_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_mm_remove_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_mm_remove_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_mm_remove_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_mm_remove_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_unlinkable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_unlinkable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_unlinkable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_unlinkable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_mm_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_mm_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_mm_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_mm_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a13_item_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a13_item_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a13_item_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a13_item_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alt_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alt_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alt_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alt_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_images_n_videos_proofing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_images_n_videos_proofing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_images_n_videos_proofing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_images_n_videos_proofing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_images_n_videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_images_n_videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_images_n_videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_images_n_videos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_max_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_max_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_max_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_max_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_wrap_around'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_wrap_around'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_wrap_around'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_wrap_around'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_autoplay_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_autoplay_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_autoplay_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_autoplay_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_pause_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_pause_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_pause_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_pause_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_effect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_effect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_effect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_effect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_contain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_contain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_contain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_contain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_free_scroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_free_scroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_free_scroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_free_scroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_arrows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_arrows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_arrows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_arrows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_dots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_dots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_dots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_dots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_cell_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_cell_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_cell_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_cell_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scroller_cell_width_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scroller_cell_width_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scroller_cell_width_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scroller_cell_width_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slide_title_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slide_title_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slide_title_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slide_title_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_overlay_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_overlay_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_overlay_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_overlay_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_overlay_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_overlay_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_overlay_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_overlay_font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a13_nava_page_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a13_nava_page_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a13_nava_page_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a13_nava_page_slug'"
