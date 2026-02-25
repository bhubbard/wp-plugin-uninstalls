#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitchpress_registration_requirevalidemail'
wp option delete 'twitchpress_automatic_registration'
wp option delete 'twitchpress_login_loggedin_page_id'
wp option delete 'twitchpress_login_loginpage_position'
wp option delete 'twitchpress_login_button'
wp option delete 'twitchpress_login_loginpage_type'
wp option delete 'twitchpress_login_requiretwitch'
wp option delete 'twitchpress_login_button_text'
wp option delete 'twitchpress_login_redirect_to_custom'
wp option delete 'twitchpress_login_mainform_page_id'
wp option delete 'twitchpress_login_messages'
wp option delete 'twitchpress_loginextension_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_oauth_%' OR option_name LIKE '_site_transient_twitchpress_oauth_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_partnered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_partnered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_partnered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_partnered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_token_refresh'"
