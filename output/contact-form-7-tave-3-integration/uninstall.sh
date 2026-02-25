#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tave-ignore-fields'
wp option delete 'tave-api-key'
wp option delete 'tave-studio-id'
wp option delete 'send-CF7'
wp option delete 'send-Tave'
wp option delete 'taveErrorLog'

