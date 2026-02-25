#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'current_extension'
wp option delete 'extension_enabled'
wp option delete 'extFlag'

