#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_completed'"
wp option delete 'mcloud-storage-provider'
wp option delete 'mcloud-storage-google-credentials'
wp option delete 'mcloud-storage-google-bucket'
wp option delete 'mcloud-storage-s3-access-key'
wp option delete 'mcloud-storage-s3-secret'
wp option delete 'mcloud-storage-s3-bucket'
wp option delete 'mcloud-storage-s3-region'
wp option delete 'mcloud-storage-s3-endpoint'
wp option delete 'mcloud-storage-prefix'
wp option delete 'wpmcs_global_settings'
wp option delete 'tantan_wordpress_s3'
wp option delete 'sm_root_dir'
wp option delete 'sm_bucket'
wp option delete 'sm_key_json'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
