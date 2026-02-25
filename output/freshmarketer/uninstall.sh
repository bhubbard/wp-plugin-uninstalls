#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freshmarketer_project_code'
wp option delete 'freshmarketer_token'
wp option delete 'freshmarketer_auth_token'
wp option delete 'freshmarketer_org_id'
wp option delete 'freshmarketer_project_id'
wp option delete 'freshmarketer_user'
wp option delete 'freshmarketer_user_id'
wp option delete 'freshmarketer_url'

