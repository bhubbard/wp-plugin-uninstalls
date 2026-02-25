#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpo_language'
wp option delete 'wpo_username'
wp option delete 'wpo_licence_code'

