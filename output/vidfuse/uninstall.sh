#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vidfuse_token'
wp option delete 'vidfuse_connected'
wp option delete 'vidfuse_code'

