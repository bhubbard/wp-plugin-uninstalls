#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'db_key'
wp option delete 'db_secret'
wp option delete 'db_auth_token'
wp option delete 'db_auth_token_secret'
wp option delete 'db_path'
wp option delete 'db_temp_path'
wp option delete 'db_allow_ext'

