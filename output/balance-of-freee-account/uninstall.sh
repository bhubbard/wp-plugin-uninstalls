#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bofa_client_id'
wp option delete 'bofa_client_secret'
wp option delete 'bofa_access_token'
wp option delete 'bofa_refresh_token'
wp option delete 'bofa_expire'

