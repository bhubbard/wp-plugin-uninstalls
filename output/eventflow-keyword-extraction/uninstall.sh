#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eventflow_access_token'
wp option delete 'eventflow_access_token_secret'

