#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sshw_api_key'
wp option delete 'sshw_secret'
wp option delete 'sshw_cahche'

