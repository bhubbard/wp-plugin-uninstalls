#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shpsafe_woo_admin_api_token'
wp option delete 'shpsafe_woo_user_api_token'

