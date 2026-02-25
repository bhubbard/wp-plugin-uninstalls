#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optin_timer'
wp option delete 'optin_type'
wp option delete 'lightbox-layout'
wp option delete 'flyer-layout'
wp option delete 'stickytop-layout'
wp option delete 'wp_editor_data'
wp option delete 'post_id'
wp option delete 'page_id'
wp option delete 'optin_session_value'
wp option delete 'optin_session_input'
wp option delete 'optin_mailchimp_api'
wp option delete 'optin_mailchimp_content'
wp option delete 'optin_upload_media'
wp option delete 'layout_checkbox'
wp option delete 'layout_custom'
wp option delete 'is_home'
wp option delete 'mc_list'

