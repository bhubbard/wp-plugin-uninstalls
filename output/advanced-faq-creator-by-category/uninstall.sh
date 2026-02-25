#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faq_cat_page'
wp option delete 'allow_rating_faq'
wp option delete 'on_UNINSTALL_REMOVE_ALL_DATA'
wp option delete 'empty_faq_message'
wp option delete 'rating_depends_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'showcase-taxonomy-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_awesome_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_awesome_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_awesome_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_awesome_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c_icon_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deslike'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deslike'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deslike'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deslike'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqs_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqs_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqs_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqs_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'q_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'q_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'q_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'q_icon_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_font_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_font_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_font_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_font_select'"
