#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcss_settings'
wp option delete 'wpcss_localization'
wp option delete 'wpcss_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcss_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcss_hash_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcss_cart_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

