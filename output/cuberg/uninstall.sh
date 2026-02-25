#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cuberg_status'
wp option delete 'cuberg_global_settings'
wp option delete 'cuberg_config'
wp option delete 'activate_cuberg'

