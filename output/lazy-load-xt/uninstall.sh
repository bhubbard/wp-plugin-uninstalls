#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazyloadxt_general'
wp option delete 'lazyloadxt_effects'
wp option delete 'lazyloadxt_addons'
wp option delete 'lazyloadxt_advanced'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lazyloadxt_%'"
wp option delete 'lazyloadxt_version'

