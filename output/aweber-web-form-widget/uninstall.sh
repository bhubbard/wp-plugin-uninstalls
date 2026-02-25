#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AWeberWebformPluginWidgetOptions'
wp option delete 'aweber_webform_oauth_id'
wp option delete 'aweber_webform_oauth_removed'
wp option delete 'aweber_comment_checkbox_toggle'
wp option delete 'aweber_registration_checkbox_toggle'
wp option delete 'aweber_analytics_checkbox_toggle'
wp option delete 'aweber_comment_subscriber_text'
wp option delete 'aweber_register_subscriber_text'
wp option delete 'aweber_register_subscriber_listid'
wp option delete 'aweber_comment_subscriber_listid'
wp option delete 'aweber_comment_subscriber_tags'
wp option delete 'aweber_register_subscriber_tags'
wp option delete 'aweber_option_submitted'
wp option delete 'aweber_oauth_error'
wp option delete 'aweber_web_push_listid'
wp option delete 'AWeberWebformPluginAdminOptions'
wp option delete 'aweber_signup_text_value'
wp option delete 'dashboard_widget_options'
wp option delete 'aweber_landing_page_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
