#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cresta_social_shares_facebook_appid'
wp option delete 'cresta_social_shares_facebook_appsecret'
wp option delete 'cresta_social_shares_cache_period'
wp option delete 'cresta_social_shares_store_meta'
wp option delete 'cresta_social_shares_selected_page'
wp option delete 'cresta_social_shares_http_https_both'
wp option delete 'cresta_social_shares_show_counter'
wp option delete 'cresta_social_shares_show_floatbutton'
wp option delete 'cresta_social_shares_google_font'
wp option delete 'selected_button'
wp option delete 'cresta_social_shares_show_ifmorezero'
wp option delete 'cresta_social_shares_show_ifmorenumber'
wp option delete 'cresta_social_shares_float'
wp option delete 'cresta_social_shares_float_buttons'
wp option delete 'cresta_social_shares_style'
wp option delete 'cresta_social_shares_position_top'
wp option delete 'cresta_social_shares_position_left'
wp option delete 'cresta_social_shares_twitter_username'
wp option delete 'cresta_social_shares_twitter_new_logo'
wp option delete 'cresta_social_shares_show_total'
wp option delete 'cresta_social_shares_total_text'
wp option delete 'cresta_social_shares_disable_mobile'
wp option delete 'cresta_social_shares_enable_animation'
wp option delete 'cresta_social_shares_enable_samecolors'
wp option delete 'cresta_social_shares_before_content'
wp option delete 'cresta_social_shares_after_content'
wp option delete 'cresta_social_shares_show_credit'
wp option delete 'cresta_social_shares_enable_shadow'
wp option delete 'cresta_social_shares_enable_shadow_buttons'
wp option delete 'cresta_social_shares_z_index'
wp option delete 'cresta_social_shares_button_hide_show'
wp option delete 'cresta_social_shares_custom_css'
wp option delete 'cresta_social_shares_twitter_shares_two'
wp option delete 'cresta_social_shares_twitter_shares_three'
wp option delete 'cresta_social_shares_pintmode'
wp option delete 'cresta_social_shares_linkedin_alternative_count'
wp option delete 'cresta_social_shares_twitter_shares'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cresta_facebook_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cresta_facebook_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cresta_facebook_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cresta_facebook_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_get_cresta_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_get_cresta_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_get_cresta_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_get_cresta_plugin'"
