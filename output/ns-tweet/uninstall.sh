#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oauth_consumer_key'
wp option delete 'consumer_secret'
wp option delete 'oauth_access_token'
wp option delete 'oauth_access_token_secret'

