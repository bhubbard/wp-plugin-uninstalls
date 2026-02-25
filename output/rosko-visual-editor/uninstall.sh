#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visual_editor_options'
wp option delete 'social_options'
wp option delete 'parallax'
wp option delete 'slider'
wp option delete 'galleries'
wp option delete 'staff'
wp option delete 'timeline'
wp option delete 'testimonials'
wp option delete 'infoboxes'
wp option delete 'facebook'
wp option delete 'twitter'
wp option delete 'linkedin'
wp option delete 'google'
wp option delete 'youtube'
wp option delete 'snapchat'
wp option delete 'mail'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font-awesome-class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font-awesome-class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font-awesome-class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font-awesome-class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starting-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starting-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starting-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starting-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ending-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ending-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ending-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ending-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paragraph_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paragraph_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paragraph_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paragraph_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paragraph_txt_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paragraph_txt_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paragraph_txt_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paragraph_txt_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_txt_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_txt_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_txt_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_txt_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_btn_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_btn_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_btn_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_btn_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_btn_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_btn_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_btn_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_btn_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infobox_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infobox_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infobox_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infobox_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timeline_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timeline_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timeline_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timeline_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'staff_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'staff_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'staff_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'staff_color'"
