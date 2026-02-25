#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eiam_db_version'
wp option delete 'eiam_settings'
wp option delete 'eiam_caps_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eiam_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eiam_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eiam_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eiam_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eiam_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eiam_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eiam_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eiam_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eiam_license_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eiam_license_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eiam_license_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eiam_license_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eiam_license_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eiam_license_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eiam_license_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eiam_license_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eiam_attribution_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eiam_attribution_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eiam_attribution_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eiam_attribution_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
