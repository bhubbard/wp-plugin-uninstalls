-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('niteoCS_page_filter', 'niteoCS_bypass_id', 'niteoCS_bypass', 'niteoCS_bypass_expire', 'niteoCS_page_whitelist', 'niteoCS_page_blacklist', 'niteoCS_roles', 'niteoCS_roles_topbar', 'niteoCS_theme', 'niteoCS_favicon_id', 'niteoCS_title', 'niteoCS_descr', 'niteoCS_analytics', 'niteoCS_analytics_status', 'niteoCS_analytics_other', 'niteoCS_custom_css', 'niteoCS_soc_title', 'niteoCS_socialmedia', 'niteoCS_body_title', 'niteoCS_body', 'niteoCS_copyright', 'niteoCS_URL_redirect', 'niteoCS_redirect_time', 'niteoCS_status', 'niteoCS_activation', 'niteoCS_translation', 'niteoCS_subscribe_type', 'niteoCS_subscribe_code', 'niteoCS_subscribe_label', 'niteoCS_contact_form_type', 'niteoCS_contact_form_id', 'niteoCS_subscribers_list', 'niteoCS_contact_form_label', 'niteoCS_counter', 'niteoCS_counter_date', 'niteoCS_countdown_action', 'niteoCS_countdown_text', 'niteoCS_countdown_redirect', 'niteoCS_counter_heading', 'niteoCS_subscribe_method', 'niteoCS_mailchimp_apikey', 'niteoCS_mailchimp_list_selected', 'niteoCS_mailchimp_lists', 'niteoCS_archive', 'niteoCS_social_location');
DELETE FROM wp_options WHERE option_name LIKE '%]';
DELETE FROM wp_options WHERE option_name LIKE 'niteoCS_%';
DELETE FROM wp_options WHERE option_name LIKE '%-activation-date';
DELETE FROM wp_options WHERE option_name LIKE '%][constellation][color]';
DELETE FROM wp_options WHERE option_name LIKE '%_updatecheck';

