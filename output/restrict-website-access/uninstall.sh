#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zx_rwa_option_enabled'
wp option delete 'zx_rwa_option_password'
wp option delete 'zx_rwa_option_logo'
wp option delete 'zx_rwa_access_granted'

