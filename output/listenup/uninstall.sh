#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'listenup_options'
wp option delete 'listenup_pronunciation_rules'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_listenup_signed_url_%' OR option_name LIKE '_site_transient_listenup_signed_url_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cloud_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cloud_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cloud_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cloud_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listenup_mp3_cloud_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listenup_mp3_cloud_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listenup_mp3_cloud_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listenup_mp3_cloud_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listenup_chunked_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listenup_chunked_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listenup_chunked_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listenup_chunked_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listenup_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listenup_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listenup_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listenup_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listenup_wav_cloud_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listenup_wav_cloud_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listenup_wav_cloud_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listenup_wav_cloud_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listenup_mp3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listenup_mp3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listenup_mp3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listenup_mp3_url'"
