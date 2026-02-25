#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsfyt_application_key'
wp option delete 'hsfyt_application_secret'
wp option delete 'hsfyt_access_token'
wp option delete 'hsfyt_access_token_secret'
wp option delete 'hsfyt_user_screenname'

