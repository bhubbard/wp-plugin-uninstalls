#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmpg_licence_index'
wp option delete 'wcmpg_licence_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'WCMPH_hide_notice'

