#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tuxbfu_file_scan'
wp option delete 'tuxedo_big_file_uploads_install_time'
wp option delete 'tuxbfu_max_upload_size'
wp option delete 'tuxbfu_settings'
wp option delete 'ms_files_rewriting'
wp option delete 'tuxbfu_chunk_size'
wp option delete 'tuxbfu_max_retries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bffu_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bffu_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bffu_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bffu_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
