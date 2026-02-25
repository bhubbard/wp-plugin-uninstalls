#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tzcustom-db-version'
wp option delete 'tzcustom-update-notification'
wp option delete 'tzcustom-curr-version'
wp option delete 'tzcustom_excerptlen_one'
wp option delete 'tzcustom_excerptlen'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tzcustomsmethod%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optset%'"
wp option delete 'tzcustomsmethod1'
wp option delete 'tzcustomsmethod2'
wp option delete 'tzcustomsmethod3'

