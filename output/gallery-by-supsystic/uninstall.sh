#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_welcome_page_was_showed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'sgg_ac_remind'
wp option delete 'sgg_ac_subscribe'
wp option delete 'sgg_ac_disabled'
wp option delete 'sg_settings'
wp option delete 'previewImageId'
wp option delete 'customCatsPresets'
wp option delete 'customPagesPresets'
wp option delete 'showGalleryRevNotice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rand_sorts'"
wp option delete 'defaultgallerysettings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'post_to_render%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pages_to_render%'"
wp option delete 'supsystic_gallery_show_love_link'
wp option delete 'supsystic_gallery_last_check_love_link'
wp option delete 'supsystic_gallery_love_link_title'
wp option delete 'insta_token'
wp option delete 'insta_user'
wp option delete 'insta_thumbnails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_page_was_showed'"
wp option delete 'sgg_plug_welcome_show'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cropPositionNeedUpdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cropPositionNeedUpdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cropPositionNeedUpdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cropPositionNeedUpdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'captionEffect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'captionEffect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'captionEffect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'captionEffect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cropPosition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cropPosition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cropPosition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cropPosition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgg-tutorial_was_showed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgg-tutorial_was_showed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgg-tutorial_was_showed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgg-tutorial_was_showed'"
