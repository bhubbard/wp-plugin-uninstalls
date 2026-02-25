#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fts_ss_oauth_access_token'
wp option delete 'fts_ss_oauth_access_token_secret'
wp option delete 'fts_ss_consumer_key'
wp option delete 'fts_ss_consumer_secret'

