#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'virtooal_%'"
wp option delete 'virtooal_api'
wp option delete 'virtooal_installation_id'
wp option delete 'virtooal_settings'
wp option delete 'virtooal_try_on_mirror_version'

