#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notification'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_subscriber'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_access_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%const_cont_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cons_cont_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id'"
wp option delete 'adn_email_sub_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id_append'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%const_cont_list_id_append'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%const_cont_list_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_list_id_append'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activecampaign_list_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_wp_color_val'"
wp option delete 'adn_mail_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_cookie_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_wp_popup_animation'"

