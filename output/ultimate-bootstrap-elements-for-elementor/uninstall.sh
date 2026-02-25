#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ube_integrated_api'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tf_token'"
wp option delete 'ube_default_color_previous'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_tf_cache' OR option_name LIKE '_site_transient_%_tf_cache'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
