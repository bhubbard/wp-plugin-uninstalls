#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affiamsh_cache_ver'
wp option delete 'affiamsh_plugin_settings'
wp option delete 'affiamsh_pro_display_options'
wp option delete 'affiamsh_is_pro'
wp option delete 'affiamsh_license_key'

