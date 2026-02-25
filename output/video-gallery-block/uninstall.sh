#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vgbAPIKey'
wp option delete 'vgbUtils'
wp option delete 'fs_lite_accounts'

