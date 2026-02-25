#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_user_auth_methods'
wp option delete 'hp_facebook_app_id'
wp option delete 'hp_google_client_id'

