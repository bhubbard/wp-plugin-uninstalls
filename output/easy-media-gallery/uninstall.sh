#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'easy_media_opt'
wp option delete 'Activated_Emg_Plugin'
wp option delete 'active_sitewide_plugins'
wp option delete 'ecf_active_addons_lite'
wp option delete 'emg_affiliate_info'
wp option delete 'emg_block_notify'
wp option delete 'emg_active_addons_lite'

# Delete Transients
wp transient delete 'emg_whats_new'
wp transient delete 'emglite_addons_feed'
wp transient delete 'easymediagallery_featured_feed'

# Clear Cron Jobs
wp cron event delete 'emg_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emg_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emg_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emg_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emg_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_video_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_video_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_video_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_video_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_gallery_opt1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_image_opt1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_image_opt1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_image_opt1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_image_opt1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_video_size_vidh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easmedia_metabox_media_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easmedia_metabox_media_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easmedia_metabox_media_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easmedia_metabox_media_video'"
