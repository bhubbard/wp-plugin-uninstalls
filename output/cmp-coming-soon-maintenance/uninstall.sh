#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'niteoCS_page_filter'
wp option delete 'niteoCS_bypass_id'
wp option delete 'niteoCS_bypass'
wp option delete 'niteoCS_bypass_expire'
wp option delete 'niteoCS_page_whitelist'
wp option delete 'niteoCS_page_blacklist'
wp option delete 'niteoCS_roles'
wp option delete 'niteoCS_roles_topbar'
wp option delete 'niteoCS_theme'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%]'"
wp option delete 'niteoCS_favicon_id'
wp option delete 'niteoCS_title'
wp option delete 'niteoCS_descr'
wp option delete 'niteoCS_analytics'
wp option delete 'niteoCS_analytics_status'
wp option delete 'niteoCS_analytics_other'
wp option delete 'niteoCS_custom_css'
wp option delete 'niteoCS_soc_title'
wp option delete 'niteoCS_socialmedia'
wp option delete 'niteoCS_body_title'
wp option delete 'niteoCS_body'
wp option delete 'niteoCS_copyright'
wp option delete 'niteoCS_URL_redirect'
wp option delete 'niteoCS_redirect_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'niteoCS_%'"
wp option delete 'niteoCS_status'
wp option delete 'niteoCS_activation'
wp option delete 'niteoCS_translation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation-date'"
wp option delete 'niteoCS_subscribe_type'
wp option delete 'niteoCS_subscribe_code'
wp option delete 'niteoCS_subscribe_label'
wp option delete 'niteoCS_contact_form_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][constellation][color]'"
wp option delete 'niteoCS_contact_form_id'
wp option delete 'niteoCS_subscribers_list'
wp option delete 'niteoCS_contact_form_label'
wp option delete 'niteoCS_counter'
wp option delete 'niteoCS_counter_date'
wp option delete 'niteoCS_countdown_action'
wp option delete 'niteoCS_countdown_text'
wp option delete 'niteoCS_countdown_redirect'
wp option delete 'niteoCS_counter_heading'
wp option delete 'niteoCS_subscribe_method'
wp option delete 'niteoCS_mailchimp_apikey'
wp option delete 'niteoCS_mailchimp_list_selected'
wp option delete 'niteoCS_mailchimp_lists'
wp option delete 'niteoCS_archive'
wp option delete 'niteoCS_social_location'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updatecheck' OR option_name LIKE '_site_transient_%_updatecheck'"

