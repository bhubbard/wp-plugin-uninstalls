#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pjci_api_key'
wp option delete 'pjci_sizes'
wp option delete 'pjci_responseCode'
wp option delete 'pjci_compression_timing'
wp option delete 'pjci_quota_remaining'
wp option delete 'pjci_total_credits'
wp option delete 'pjci_plan_name'
wp option delete 'pjci_quota_total'
wp option delete 'pjci_quota_used'
wp option delete 'pjci_response_message'
wp option delete 'pjci_response_errorMsg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'pjci_api_responsecode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pjci_rpc_%' OR option_name LIKE '_site_transient_pjci_rpc_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjci_compress_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjci_compress_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjci_compress_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjci_compress_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjci_check_bgcompress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjci_check_bgcompress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjci_check_bgcompress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjci_check_bgcompress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjci_single_images_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjci_single_images_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjci_single_images_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjci_single_images_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjci_inc_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjci_inc_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjci_inc_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjci_inc_no'"
