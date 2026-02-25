#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download_counter_options'
wp option delete 'simple-download-counter-dismiss-notice'

# Delete Transients
wp transient delete 'update_sdc_download_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_ext'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_ext'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_ext'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_ext'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdc_download_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdc_download_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdc_download_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdc_download_hash'"
