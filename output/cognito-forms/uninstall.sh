#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cognito_dev_environment'
wp option delete 'cognito_public_key'

