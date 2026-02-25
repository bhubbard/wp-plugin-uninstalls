#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'teamgate-app-key'
wp option delete 'teamgate-auth-token'

