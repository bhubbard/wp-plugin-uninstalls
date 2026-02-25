#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sticky_genesis_topbar_bg'
wp option delete 'sticky_genesis_topbar_tcolor'
wp option delete 'sticky_genesis_topbar_bbg'
wp option delete 'sticky_genesis_topbar_tc'
wp option delete 'sticky_genesis_topbar_cdbc'
wp option delete 'topbar_max_width'
wp option delete 'topbar_font_size'
wp option delete 'topbar_height'
wp option delete 'sticky_topbar_btn_animation'
wp option delete 'sticky_topbar_reposition'
wp option delete 'topbar_show_on'
wp option delete 'unsticky_topbar'
wp option delete 'studio_player_topbar_text'
wp option delete 'studio_player_topbar_url'
wp option delete 'sticky_topbar_url_target'
wp option delete 'sticky_topbar_url_rel'
wp option delete 'studio_player_topbar_btn_text'
wp option delete 'sticky_genesis_topbar_facebook'
wp option delete 'sticky_genesis_topbar_twitter'
wp option delete 'sticky_genesis_topbar_linkedIn'
wp option delete 'sticky_genesis_topbar_pinterest'
wp option delete 'sticky_genesis_topbar_instagram'
wp option delete 'sticky_genesis_topbar_youtube'
wp option delete 'sticky_genesis_topbar_dribbble'
wp option delete 'sticky_genesis_topbar_medium'
wp option delete 'sticky_genesis_topbar_tumblr'
wp option delete 'sticky_genesis_topbar_vimeo'
wp option delete 'sticky_genesis_topbar_cell'
wp option delete 'topbar_social_off'
wp option delete 'topbar_social_hide_on_mob'
wp option delete 'text_before_countdown'
wp option delete 'sticky_cd_mth'
wp option delete 'sticky_cd_date'
wp option delete 'sticky_cd_yer'
wp option delete 'sticky_cd_time_hr'
wp option delete 'sticky_cd_time_min'
wp option delete 'sticky_cd_time_sec'
wp option delete 'topbar_countdown_off'
wp option delete 'studio_player_footer_creds'
wp option delete 'or_loop'
wp option delete 'or_loop_hrs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgt_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgt_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgt_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgt_plugin_notice_dismissed'"
