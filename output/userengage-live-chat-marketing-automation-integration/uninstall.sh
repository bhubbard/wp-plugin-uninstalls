#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'UserEngageScript_domain'
wp option delete 'UserEngageScript__apiKey'
wp option delete 'UserEngageScript_toggle_version'

