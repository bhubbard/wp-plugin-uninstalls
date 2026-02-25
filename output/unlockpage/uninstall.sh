#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlockpage_verification_token'
wp option delete 'unlockpage_signing_secret'
wp option delete 'unlockpage_api_url'

