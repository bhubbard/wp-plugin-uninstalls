#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dragblock/form-transient-%' OR option_name LIKE '_site_transient_dragblock/form-transient-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%--_wp_http_referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%--_wp_http_referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%--_wp_http_referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%--_wp_http_referer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-failed-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-failed-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-failed-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-failed-email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
