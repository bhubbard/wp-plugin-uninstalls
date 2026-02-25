#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'et_fc'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'envo_plugin_do_activation_redirect'
wp option delete 'classic-editor-replace'
wp option delete 'kirki_downloaded_font_files'
wp option delete 'envo_extra_actions_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'envothemes_active_time'
wp option delete 'envothemes_active_pro_time'
wp option delete 'envothemes_demo_import_url'
wp option delete 'envothemes_activation_redirect'
wp option delete 'envothemes_maybe_later'
wp option delete 'envothemes_review_dismiss'
wp option delete 'elementor_onboarded'
wp option delete 'active_envo_one_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_wc_needs_pages'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'elementor_container_width'
wp option delete 'elementor_experiment-container'

# Delete Transients
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'
wp transient delete 'kirki_remote_url_contents'
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'envo_extra_meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'envo_extra_meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'envo_extra_meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'envo_extra_meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'envo_extra_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'envo_extra_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'envo_extra_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'envo_extra_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'envo_extra_hide_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'envo_extra_hide_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'envo_extra_hide_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'envo_extra_hide_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'envo_extra_transparent_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'envo_extra_transparent_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'envo_extra_transparent_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'envo_extra_transparent_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'envo_extra_header_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'envo_extra_header_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'envo_extra_header_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'envo_extra_header_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
