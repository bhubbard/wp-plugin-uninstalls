#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'won_api_url'
wp option delete 'won_pair_checkId'
wp option delete 'won_pair_apiToken'
wp option delete 'won_pair_token'
wp option delete 'won_pair_publicToken'
wp option delete 'won_pair_connectionCheck'

