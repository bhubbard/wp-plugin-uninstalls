#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TMD_Amazon_Access_Key'
wp option delete 'TMD_Amazon_Secret_Access_Key'
wp option delete 'TMD_Amazon_Associate_Tag'
wp option delete 'TMD_Button_Text'
wp option delete 'Tracking_ID'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Aff_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Aff_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Aff_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Aff_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'TMD-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'TMD-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'TMD-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'TMD-time'"
