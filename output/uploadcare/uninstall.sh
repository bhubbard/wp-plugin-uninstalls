#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uploadcare_source_tabs'
wp option delete 'uploadcare_public'
wp option delete 'uploadcare_upload_lifetime'
wp option delete 'uploadcare_secret'
wp option delete 'uploadcare_cdn_base'
wp option delete 'uploadcare_finetuning'
wp option delete 'uploadcare_adaptive_delivery'
wp option delete 'uploadcare_blink_loader'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'uploadcare_public_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uploadcare_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uploadcare_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uploadcare_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uploadcare_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uploadcare_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uploadcare_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uploadcare_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uploadcare_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
