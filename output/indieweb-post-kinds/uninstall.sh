#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kind_termslist'
wp option delete 'kind_default'
wp option delete 'kind_embeds'
wp option delete 'kind_firehose'
wp option delete 'kind_bottom'
wp option delete 'kind_display'
wp option delete 'kind_kses'
wp option delete 'kind_title'
wp option delete 'kind_protection'
wp option delete 'iw_single_author'
wp option delete 'iw_default_author'

# Delete Transients
wp transient delete 'kind_post_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_img_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_img_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_img_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_img_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_video_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_video_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_video_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_video_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_audio_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_audio_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_audio_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_audio_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_publication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_publication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_publication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_publication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_cite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_cite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_cite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_cite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_url'"
