#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'include-wp_head'
wp option delete 'include-wp_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5slide_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5slide_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5slide_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5slide_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5slide_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5slide_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5slide_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5slide_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5presentation_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5presentation_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5presentation_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5presentation_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5presentation_edit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5presentation_edit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5presentation_edit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5presentation_edit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'associated_presentation_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'associated_presentation_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'associated_presentation_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'associated_presentation_ID'"
