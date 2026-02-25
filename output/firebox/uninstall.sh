#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firebox_activation_redirect'
wp option delete 'firebox_onboarding_completed'
wp option delete 'firebox_version'
wp option delete 'firebox_settings'
wp option delete 'firebox_import'
wp option delete 'firebox_license_status'
wp option delete 'firebox_license_key'
wp option delete 'hide-admin-bar'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'fpf_geo_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firebox_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firebox_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firebox_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firebox_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fpframework_meta_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fpframework_meta_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fpframework_meta_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fpframework_meta_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpframework_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpframework_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpframework_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpframework_templates_image_hash'"
