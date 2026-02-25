#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gnt_hook_settings'
wp option delete 'gnt_integration_settings'
wp option delete 'gnt_settings'

