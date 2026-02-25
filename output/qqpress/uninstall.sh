#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qqpress_message'
wp option delete 'qqpress_db_version'
wp option delete 'qq_oauth_token'
wp option delete 'qq_oauth_token_secret'

