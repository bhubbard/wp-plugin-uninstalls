#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gsb_post_type'
wp option delete 'fist_icon_text'
wp option delete 'fist_icon_link'
wp option delete 'mail_text'
wp option delete 'mail_link'
wp option delete 'phone_text'
wp option delete 'phone_link'
wp option delete 'whatsapp_text'
wp option delete 'whatsapp_link'
wp option delete 'messenger_text'
wp option delete 'messenger_link'
wp option delete 'facebook_text'
wp option delete 'facebook_link'
wp option delete 'youtube_text'
wp option delete 'youtube_link'
wp option delete 'linkedin_text'
wp option delete 'linkedin_link'
wp option delete 'instagram_text'
wp option delete 'instagram_link'
wp option delete 'twitter_text'
wp option delete 'twitter_link'
wp option delete 'skype_text'
wp option delete 'skype_link'
wp option delete 'pinterest_text'
wp option delete 'pinterest_link'
wp option delete 'google_plus_text'
wp option delete 'google_plus_link'
wp option delete 'mobile_display'
wp option delete 'call_now_link'
wp option delete 'call_now_image'
wp option delete 'call_now_title'
wp option delete 'call_now_slogan'
wp option delete 'call_now_social_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsb'"
