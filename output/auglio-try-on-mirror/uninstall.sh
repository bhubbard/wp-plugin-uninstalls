#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auglio_try_on_mirror_version'
wp option delete 'auglio_installation_id'
wp option delete 'auglio_settings'
wp option delete 'auglio_api'
wp option delete 'auglio_product_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'auglio_%'"

