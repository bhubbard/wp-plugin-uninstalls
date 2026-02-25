#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwx_testimonial_singular'
wp option delete 'gwx_testimonial_plural'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwx_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwx_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwx_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwx_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwx_citation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwx_citation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwx_citation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwx_citation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwx_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwx_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwx_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwx_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwx_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwx_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwx_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwx_quote'"
