#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maridjancahayap_options'
wp option delete 'maridjancahaya_post_title_format'
wp option delete 'wc_special_footer_timestamp'
wp option delete 'wc_special_footer_cache'
wp option delete 'feedburner_settings'
wp option delete 'feedsmith_token'
wp option delete 'mt_compression_plugin_support'
wp option delete 'mt_compression_on'
wp option delete 'yd_fpu_status'
wp option delete 'getwiki_settings'
wp option delete 'jlao_cat_post_thumb_sizes'
wp option delete 'facebook_like_attribution'
wp option delete 'facebook_like_enabled'
wp option delete 'facebook_like_layout'
wp option delete 'facebook_like_show_faces'
wp option delete 'facebook_like_width'
wp option delete 'facebook_like_height'
wp option delete 'facebook_like_action_term'
wp option delete 'facebook_like_colors'
wp option delete 'facebook_like_global_site_name'
wp option delete 'facebook_like_widget_title'
wp option delete 'facebook_like_widget_width'
wp option delete 'facebook_like_widget_height'
wp option delete 'facebook_like_widget_layout'
wp option delete 'facebook_like_widget_show_faces'
wp option delete 'facebook_like_widget_action_term'
wp option delete 'facebook_like_widget_colors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_titleatr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_titleatr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_titleatr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_titleatr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_menulabel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_menulabel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_menulabel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_menulabel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahayap_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahayap_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahayap_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahayap_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maridjancahaya_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maridjancahaya_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maridjancahaya_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maridjancahaya_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_like_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_like_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_like_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_like_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_like_site_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_like_site_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_like_site_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_like_site_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_like_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_like_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_like_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_like_image'"
