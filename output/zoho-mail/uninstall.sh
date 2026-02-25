#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zmail_integ_domain_name'
wp option delete 'zmail_plugin_installed'
wp option delete 'zmail_auth_code'
wp option delete 'zmail_refresh_token'
wp option delete 'zmail_account_id'
wp option delete 'zmail_integ_from_email_id'
wp option delete 'zmail_access_token'
wp option delete 'redirect_url'
wp option delete 'zmail_integ_client_id'
wp option delete 'zmail_integ_client_secret'
wp option delete 'zmail_content_type'
wp option delete 'zmail_integ_from_name'
wp option delete 'zmail_integ_timestamp'

