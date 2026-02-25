#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_blog'
wp option delete 'content_contact'
wp option delete 'content_testimonials'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_background_image_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_background_image_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_background_image_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_background_image_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_choices_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_choices_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_choices_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_choices_amount'"
