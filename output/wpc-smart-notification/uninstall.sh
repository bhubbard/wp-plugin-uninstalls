#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsn_settings'
wp option delete 'wpcsn_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsn_%'"
wp option delete 'wpcsn_opts'

# Delete Transients
wp transient delete 'wpclever_plugins'

