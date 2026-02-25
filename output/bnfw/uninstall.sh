#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bnfw_suppress_spam'
wp option delete 'classic-editor-replace'
wp option delete 'bnfw_email_format'
wp option delete 'bnfw_enable_shortcodes'
wp option delete 'bnfw_allow_tracking'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'bnfw_licenses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"

# Delete Transients
wp transient delete 'bnfw-async-notifications'
wp transient delete 'bnfw-row-action-success-notice'
wp transient delete 'bnfw-row-action-error-notice'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bnfw-tab-addon-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bnfw-tab-addon-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bnfw-tab-addon-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bnfw-tab-addon-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user-roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user-roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user-roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user-roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_bnfw_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_bnfw_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_bnfw_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bnfw_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_name'"
