-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adn_email_sub_enable', 'adn_mail_setting');
DELETE FROM wp_options WHERE option_name LIKE '%notification';
DELETE FROM wp_options WHERE option_name LIKE '%email_subscriber';
DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_access_url';
DELETE FROM wp_options WHERE option_name LIKE '%const_cont_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%cons_cont_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id_append';
DELETE FROM wp_options WHERE option_name LIKE '%const_cont_list_id_append';
DELETE FROM wp_options WHERE option_name LIKE '%const_cont_list_id';
DELETE FROM wp_options WHERE option_name LIKE '%active_campaign_list_id_append';
DELETE FROM wp_options WHERE option_name LIKE '%activecampaign_list_id';
DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_wp_color_val';
DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_cookie_time';
DELETE FROM wp_options WHERE option_name LIKE '%advanced_newsletter_wp_popup_animation';

