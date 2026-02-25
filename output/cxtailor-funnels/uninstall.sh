#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cxtf_username'
wp option delete 'cxtf_password'
wp option delete 'cxtf_access_token'
wp option delete 'cxtf_workspace_id'
wp option delete 'cxtf_user_id'
wp option delete 'cxtf_token_updated_at'

