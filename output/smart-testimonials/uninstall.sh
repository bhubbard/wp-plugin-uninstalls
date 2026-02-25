#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multifaq_color'
wp option delete 'headfont_family'
wp option delete 'multifaq_fontcolor'
wp option delete 'multifaq_fontstyle'
wp option delete 'multifaq_fontweight'
wp option delete 'content_color'
wp option delete 'content_size'
wp option delete 'contentfont_family'
wp option delete 'content_fontcolor'
wp option delete 'content_fontstyle'
wp option delete 'content_fontweight'
wp option delete 'person_color'
wp option delete 'person_size'
wp option delete 'personfont_family'
wp option delete 'person_fontcolor'
wp option delete 'person_fontstyle'
wp option delete 'person_fontweight'
wp option delete 'desig_color'
wp option delete 'desig_size'
wp option delete 'desigfont_family'
wp option delete 'desig_fontcolor'
wp option delete 'desig_fontstyle'
wp option delete 'desig_fontweight'
wp option delete 'multifaq_htype'
wp option delete 'multifaq_expand'
wp option delete 'multifaq_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testi_by_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testi_by_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testi_by_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testi_by_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testi_by_desig'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testi_by_desig'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testi_by_desig'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testi_by_desig'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'border'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'border'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'border'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'border'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'border_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'border_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'border_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'border_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadow_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadow_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadow_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadow_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadow_blur'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadow_blur'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadow_blur'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadow_blur'"
