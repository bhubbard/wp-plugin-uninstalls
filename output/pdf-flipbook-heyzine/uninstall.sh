#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cl_heyzine_oauth_token'
wp option delete 'cl_heyzine_oauth_email'
wp option delete 'cl_heyzine_oauth_refresh_token'
wp option delete 'cl_heyzine_oauth_token_expires_at'

