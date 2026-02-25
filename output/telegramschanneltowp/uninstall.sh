#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'API_Key'
wp option delete 'Channels_username'
wp option delete 'MaxHeight'
wp option delete 'Background'

