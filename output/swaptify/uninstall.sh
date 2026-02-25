#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swaptify_property_key'
wp option delete 'swaptify_account_token'
wp option delete 'swaptify_enabled'
wp option delete 'swaptify_version'

