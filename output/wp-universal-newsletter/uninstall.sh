#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_newsletter_post_label'
wp option delete 'wp_newsletter_header'
wp option delete 'wp_newsletter_logo'
wp option delete 'wp_newsletter_html_bg_color'
wp option delete 'wp_newsletter_bg_color'
wp option delete 'wp_newsletter_body_width'
wp option delete 'wp_newsletter_body_padding'
wp option delete 'wp_newsletter_body_border_color'
wp option delete 'wp_newsletter_font_family'
wp option delete 'wp_newsletter_font_color'
wp option delete 'wp_newsletter_text_size'
wp option delete 'wp_newsletter_link_color'
wp option delete 'wp_newsletter_link_hover_color'
wp option delete 'wp_newsletter_heading_color'
wp option delete 'wp_newsletter_button_bg_color'
wp option delete 'wp_newsletter_button_text_color'
wp option delete 'wp_newsletter_date_format'
wp option delete 'wp_newsletter_google_parameters'
wp option delete 'wp_newsletter_google_analytics'
wp option delete 'wp_newsletter_outlook'
wp option delete 'wp_newsletter_footer'
wp option delete 'wp_newsletter_socialize'
wp option delete 'wp_newsletter_post_slug'
wp option delete 'wp_newsletter_with_front'
wp option delete 'wp_newsletter_archive_slug'
wp option delete 'wp_newsletter_single_override'
wp option delete 'wp_newsletter_fb_app_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_newsletter_sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_newsletter_sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_newsletter_sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_newsletter_sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_newsletter_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_newsletter_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_newsletter_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_newsletter_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_newsletter_preview_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_newsletter_preview_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_newsletter_preview_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_newsletter_preview_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_newsletter_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_newsletter_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_newsletter_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_newsletter_image_url'"
