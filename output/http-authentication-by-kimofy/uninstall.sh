#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'http_auth_username'
wp option delete 'http_auth_password'
wp option delete 'http_auth_message'
wp option delete 'http_auth_apply'
wp option delete 'http_auth_activate'

