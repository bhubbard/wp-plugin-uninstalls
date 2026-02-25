#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'satoshipay_api'
wp option delete 'checkedCredentials'
wp option delete 'validCredentials'
wp option delete 'satoshipay_ad_blocker_detection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_satoshipay_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_satoshipay_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_satoshipay_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_satoshipay_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_satoshipay_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_satoshipay_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_satoshipay_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_satoshipay_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_satoshipay_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_satoshipay_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_satoshipay_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_satoshipay_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_satoshipay_asset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_satoshipay_asset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_satoshipay_asset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_satoshipay_asset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
