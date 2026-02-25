#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ni_isJsonValid'
wp option delete 'ni_settings_request_url'
wp option delete 'ni_settings_request_type'
wp option delete 'ni_settings_request_authtype'
wp option delete 'ni_settings_request_username'
wp option delete 'ni_settings_request_password'
wp option delete 'ni_settings_headers'
wp option delete 'ni_settings_fields'
wp option delete 'ni_settings_post_type'
wp option delete 'ni_settings_arraykey'
wp option delete 'ni_settings_titlekey'
wp option delete 'ni_settings_descriptionkey'
wp option delete 'ni_settings_datekey'
wp option delete 'ni_settings_post_status'
wp option delete 'ni_responseKeys'

