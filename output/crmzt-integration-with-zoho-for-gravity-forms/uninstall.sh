#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CRMZT_refresh_token'
wp option delete 'CRMZT_client_id'
wp option delete 'CRMZT_client_secret'
wp option delete 'CRMZT_auth_code'
wp option delete 'CRMZT_maxmind_account_id'
wp option delete 'CRMZT_maxmind_license_key'
wp option delete 'CRMZT_org_id'
wp option delete 'CRMZT_access_token'
wp option delete 'CRMZT_crmformswpbuilder_settings'

