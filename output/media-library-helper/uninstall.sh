#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdxn_mlh_plugin_activation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_time'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rate_the_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rate_the_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rate_the_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rate_the_plugin'"
