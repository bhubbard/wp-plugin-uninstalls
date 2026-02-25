#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beedia_qiniu_access_key'
wp option delete 'beedia_qiniu_secret_key'
wp option delete 'beedia_qiniu_bucket_name'
wp option delete 'beedia_qiniu_switch'
wp option delete 'beedia_qiniu_host'
wp option delete 'beedia_when_delete_post_image_rule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qiniu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qiniu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qiniu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qiniu'"
