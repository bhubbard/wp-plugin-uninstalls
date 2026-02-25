#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iloveimg_images_to_restore'
wp option delete 'iloveimg_options_watermark'
wp option delete 'iloveimg_options_is_watermark_image'
wp option delete 'iloveimg_account_error'
wp option delete 'iloveimg_account'
wp option delete 'iloveimg_proyect'
wp option delete 'iloveimg_options_compress'
wp option delete 'iloveimg_user_is_migrated'

# Delete Transients
wp transient delete 'iloveimgwm_bulk_success'
wp transient delete 'iloveimgwm_bulk_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iloveimg_status_watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iloveimg_status_watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iloveimg_status_watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iloveimg_status_watermark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iloveimg_watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iloveimg_watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iloveimg_watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iloveimg_watermark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iloveimg_status_compress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iloveimg_status_compress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iloveimg_status_compress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iloveimg_status_compress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iloveimg_compress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iloveimg_compress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iloveimg_compress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iloveimg_compress'"
