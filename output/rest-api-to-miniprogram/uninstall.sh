#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wf_display_categories'
wp option delete 'wf_enable_comment_check'
wp option delete 'wf-liveInfo-option'
wp option delete 'raw_paykey'
wp option delete 'wf_about'
wp option delete 'wf_enterprise_minapp'
wp option delete 'wf_hot_posts_years'
wp option delete 'wf_swipe'
wp option delete 'minapper_expand_settings_page'
wp option delete 'wf_downloadfile_domain'
wp option delete 'wf_business_domain'
wp option delete 'wf_zan_imageurl'
wp option delete 'wf_logo_imageurl'
wp option delete 'wf_poster_imageurl'
wp option delete 'wf_appid'
wp option delete 'wf_enable_comment_option'
wp option delete 'wf_interstitial_ad_id'
wp option delete 'enable_index_interstitial_ad'
wp option delete 'enable_detail_interstitial_ad'
wp option delete 'enable_topic_interstitial_ad'
wp option delete 'enable_list_interstitial_ad'
wp option delete 'enable_hot_interstitial_ad'
wp option delete 'enable_comments_interstitial_ad'
wp option delete 'enable_live_interstitial_ad'
wp option delete 'wf_secret'
wp option delete 'wf_minapper_qrcode_url'
wp option delete 'wf_detail_bottom_display_qrcode'
wp option delete 'wf_video_ad_id'
wp option delete 'wf_list_ad_id'
wp option delete 'wf_list_ad'
wp option delete 'wf_list_ad_every'
wp option delete 'wf_praise_word'
wp option delete 'wf_copyright_state'
wp option delete 'wf_detail_ad_id'
wp option delete 'wf_detail_ad'
wp option delete 'wf_excitation_ad_id'
wp option delete 'wf_default_thumbnail_image'
wp option delete 'wf_updateAvatar_count'
wp option delete 'minapper_weixin_user'
wp option delete 'ram-access_token'
wp option delete 'wf_mchid'
wp option delete 'wf_paykey'
wp option delete 'wf_paybody'
wp option delete 'wf_web_gallery_style'

# Delete Transients
wp transient delete 'minapper-verify-result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qquuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zanimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zanimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zanimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zanimage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wl_pageviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wl_pageviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wl_pageviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wl_pageviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storeinfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storeinfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storeinfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storeinfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storeappid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storeappid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storeappid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storeappid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usertype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usertype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usertype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usertype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catcover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catcover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catcover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catcover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_excitation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_excitation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_excitation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_excitation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wechatshopGoods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wechatshopGoods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wechatshopGoods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wechatshopGoods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minapper_weixin_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minapper_weixin_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minapper_weixin_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minapper_weixin_user'"
