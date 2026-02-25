#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SIRV_CDN_URL'
wp option delete 'SIRV_TROUBLESHOOTING_ISSUES_STATUS'
wp option delete 'SIRV_WOO_IS_USE_VIEW_FILE'
wp option delete 'SIRV_JS_MODULES'
wp option delete 'SIRV_PREVENTED_SIZES'
wp option delete 'SIRV_CLIENT_ID'
wp option delete 'SIRV_CLIENT_SECRET'
wp option delete 'SIRV_TOKEN'
wp option delete 'SIRV_TOKEN_EXPIRE_TIME'
wp option delete 'SIRV_WOO_SHOW_VARIATIONS'
wp option delete 'SIRV_WOO_SHOW_SIRV_GALLERY'
wp option delete 'SIRV_WOO_SHOW_MAIN_IMAGE'
wp option delete 'SIRV_WOO_CONTENT_ORDER'
wp option delete 'SIRV_WOO_CAT_SOURCE'
wp option delete 'SIRV_WOO_TTL'
wp option delete 'SIRV_WOO_VIEW_FOLDER_VARIATION_STRUCTURE'
wp option delete 'SIRV_WOO_VIEW_FOLDER_STRUCTURE'
wp option delete 'SIRV_WOO_MAIN_PRODUCT_IMAGE_FROM_VIEW_FILE'
wp option delete 'SIRV_WOO_SHOW_MAIN_VARIATION_IMAGE'
wp option delete 'SIRV_WOO_PRODUCTS_MOBILE_PROFILE'
wp option delete 'SIRV_WOO_PRODUCTS_PROFILE'
wp option delete 'SIRV_WOO_CAT_CONTENT'
wp option delete 'SIRV_WOO_CAT_SWAP_METHOD'
wp option delete 'SIRV_WOO_CAT_ZOOM_ON_HOVER'
wp option delete 'SIRV_WOO_CAT_SHOWING_METHOD'
wp option delete 'SIRV_WOO_CAT_ITEMS'
wp option delete 'SIRV_WOO_CAT_PROFILE'
wp option delete 'SIRV_WOO_MV_SKELETON'
wp option delete 'SIRV_WOO_MV_CUSTOM_CSS'
wp option delete 'SIRV_WOO_MAX_HEIGHT'
wp option delete 'SIRV_WOO_SMV_CONTENT_ORDER'
wp option delete 'SIRV_WOO_PIN'
wp option delete 'SIRV_WOO_ZOOM_IS_ENABLE'
wp option delete 'SIRV_ENABLE_CDN'
wp option delete 'SIRV_CUSTOM_DOMAINS'
wp option delete 'SIRV_SHORTCODES_PROFILES'
wp option delete 'SIRV_CUSTOM_SMV_SH_OPTIONS'
wp option delete 'SIRV_ACCOUNT_NAME'
wp option delete 'SIRV_FETCH_MAX_FILE_SIZE'
wp option delete 'SIRV_ACCOUNT_EMAIL'
wp option delete 'SIRV_PARSE_STATIC_IMAGES'
wp option delete 'SIRV_PARSE_VIDEOS'
wp option delete 'SIRV_FOLDER'
wp option delete 'SIRV_WOO_SHOW_ADD_MEDIA_BUTTON'
wp option delete 'SIRV_USE_SIRV_RESPONSIVE'
wp option delete 'SIRV_RESPONSIVE_PLACEHOLDER'
wp option delete 'SIRV_EXCLUDE_RESPONSIVE_FILES'
wp option delete 'SIRV_CDN_PROFILES'
wp option delete 'SIRV_CROP_SIZES'
wp option delete 'SIRV_JS'
wp option delete 'SIRV_CUSTOM_CSS'
wp option delete 'SIRV_EXCLUDE_FILES'
wp option delete 'SIRV_EXCLUDE_PAGES'
wp option delete 'SIRV_WP_MEDIA_LIBRARY_SIZE'
wp option delete 'SIRV_HTTP_AUTH_CHECK'
wp option delete 'SIRV_HTTP_AUTH_USER'
wp option delete 'SIRV_HTTP_AUTH_PASS'
wp option delete 'SIRV_SYNC_ON_UPLOAD'
wp option delete 'SIRV_PREVENT_CREATE_WP_THUMBS'
wp option delete 'SIRV_THUMBS_DATA'
wp option delete 'SIRV_DELETE_FILE_ON_SIRV'
wp option delete 'SIRV_CSS_BACKGROUND_IMAGES_SYNC_DATA'
wp option delete 'SIRV_CSS_BACKGROUND_IMAGES'
wp option delete 'SIRV_WOO_MV_CONTAINER_CUSTOM_CSS'
wp option delete 'SIRV_WOO_CONTAINER_CLASSES'
wp option delete 'SIRV_WP_NETWORK_WIDE'
wp option delete 'SIRV_VERSION_PLUGIN_INSTALLED'
wp option delete 'SIRV_MUTE'
wp option delete 'SIRV_STAT'
wp option delete 'SIRV_FOLDERS_DATA'
wp option delete 'WP_USE_SIRV_CDN'
wp option delete 'WP_SIRV_SHORTCODES_PROFILES'
wp option delete 'WP_SIRV_CDN_PROFILES'
wp option delete 'WP_USE_SIRV_RESPONSIVE'
wp option delete 'WP_SIRV_JS'
wp option delete 'WP_FOLDER_ON_SIRV'
wp option delete 'SIRV_MUTE_ERROR_MESSAGE'
wp option delete 'SIRV_AWS_BUCKET'
wp option delete 'SIRV_NETWORK_TYPE'
wp option delete 'sirv_admin_notices'
wp option delete 'sirv_review_notice'
wp option delete 'SIRV_WOO_MV_CUSTOM_OPTIONS'

# Delete Transients
wp transient delete 'isSirvActivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sirv_woo_product_image_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sirv_woo_product_image_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sirv_woo_product_image_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sirv_woo_product_image_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
