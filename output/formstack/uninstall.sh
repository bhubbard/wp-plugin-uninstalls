#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formstack_forms'
wp option delete 'formstack_access_token'
wp option delete 'formstack_refresh_token'
wp option delete 'formstack_token_expiration'
wp option delete 'formstack_form_count'
wp option delete 'formstack_settings'
wp option delete 'formstack_client_id'
wp option delete 'formstack_client_secret'
wp option delete 'formstack_oauth2_code'

