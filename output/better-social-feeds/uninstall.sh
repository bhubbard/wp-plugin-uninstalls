#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fftmj_client_id'
wp option delete 'fftmj_client_secret'
wp option delete 'fftmj_redirect_uri'
wp option delete 'fftmj_api_long_token'
wp option delete 'fftmj_api_long_token_generated'
wp option delete 'fftmj_api_long_token_expires'

