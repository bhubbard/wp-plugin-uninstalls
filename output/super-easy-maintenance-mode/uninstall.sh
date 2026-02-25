#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'super_easy_mm_status'
wp option delete 'super_easy_mm_whitelisted_ips'
wp option delete 'super_easy_mm_whitelisted_roles'
wp option delete 'super_easy_mm_background_color'
wp option delete 'super_easy_mm_main_block_background_color'
wp option delete 'super_easy_mm_bg_opacity'
wp option delete 'super_easy_mm_text_color'
wp option delete 'super_easy_mm_button_color'
wp option delete 'super_easy_mm_button_hover_color'
wp option delete 'super_easy_mm_contact_email'
wp option delete 'super_easy_mm_copyright_text'
wp option delete 'super_easy_mm_copyright_text_color'
wp option delete 'super_easy_mm_background_image'
wp option delete 'super_easy_mm_header_text'
wp option delete 'super_easy_mm_logo'
wp option delete 'super_easy_mm_paragraph_text'
wp option delete 'super_easy_mm_button_text'
wp option delete 'super_easy_mm_paragraph_text_color'
wp option delete 'super_easy_mm_header_text_color'
wp option delete 'super_easy_mm_button_text_color'
wp option delete 'super_easy_mm_button_text_hover_color'
wp option delete 'super_easy_mm_facebook_url'
wp option delete 'super_easy_mm_twitter_url'
wp option delete 'super_easy_mm_instagram_url'
wp option delete 'super_easy_mm_linkedin_url'
wp option delete 'super_easy_mm_activated'
wp option delete 'super_easy_mm_meta_title'
wp option delete 'super_easy_mm_meta_description'

# Delete Transients
wp transient delete 'super_easy_mm_activated'

