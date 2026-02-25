#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qi_addons_for_elementor_swiper_new'
wp option delete 'qi_addons_for_elementor_install_date'
wp option delete 'qi_addons_for_elementor_placeholder_image'
wp option delete 'qi_addons_for_elementor_regenerate_css'
wp option delete 'qi_addons_for_elementor_notice'
wp option delete 'qi_addons_for_elementor_review_status'
wp option delete 'qi_addons_for_elementor_review_reminder_date'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_enable_review_rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_link_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_quote_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_quote_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_quote_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_quote_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_quote_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_quote_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_quote_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_quote_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qodef_post_format_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qodef_post_format_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qodef_post_format_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qodef_post_format_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
