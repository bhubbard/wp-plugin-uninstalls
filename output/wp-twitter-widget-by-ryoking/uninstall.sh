#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptp_consumer_key'
wp option delete 'wptp_consumer_secret'
wp option delete 'wptp_oauth_token'
wp option delete 'wptp_oauth_token_secret'
wp option delete 'wptp_screen_name'
wp option delete 'wptw_oauth_verifier'
wp option delete 'wptw_oauth_token'
wp option delete 'wptw_oauth_token_secret'

