#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_tumblog_version'
wp option delete 'woo_tumblog_custom_template'
wp option delete 'woo_custom_rss'
wp option delete 'woo_tumblog_content_method'
wp option delete 'woo_image_link_to'
wp option delete 'woo_tumblog_width'
wp option delete 'woo_tumblog_video_width'
wp option delete 'woo_resize'
wp option delete 'woo_thumb_w'
wp option delete 'woo_articles_term_id'
wp option delete 'woo_images_term_id'
wp option delete 'woo_audio_term_id'
wp option delete 'woo_video_term_id'
wp option delete 'woo_quotes_term_id'
wp option delete 'woo_links_term_id'
wp option delete 'woo_custom_upload_tracking'
wp option delete 'woo_themename'
wp option delete 'woo_upload_custom_errors'
wp option delete 'woo_tumblog_post_formats_upgraded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_term_id'"
wp option delete 'woo_post_image_support'
wp option delete 'woo_auto_img'
wp option delete 'framework_woo_default_image'
wp option delete 'woo_force_all'
wp option delete 'woo_force_single'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video-embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video-embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video-embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video-embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote-copy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote-copy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote-copy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote-copy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote-author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote-author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote-author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote-author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
