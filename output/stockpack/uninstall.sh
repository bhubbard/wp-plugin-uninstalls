#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'terms_accepted_adobe_stock'
wp option delete 'terms_accepted_getty'
wp option delete 'terms_accepted_istock'
wp option delete 'terms_accepted_pixabay'
wp option delete 'terms_accepted_pexels'
wp option delete 'terms_accepted_unsplash'
wp option delete 'terms_accepted_deposit_photos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'terms_accepted_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_caption_generate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_caption_generate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_caption_generate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_caption_generate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_license_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_license_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_license_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_license_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_modification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_modification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_modification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_modification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_media_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_media_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_media_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_media_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stockpack_download_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stockpack_download_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stockpack_download_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stockpack_download_timestamp'"
