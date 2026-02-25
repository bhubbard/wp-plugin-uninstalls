#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tzpost_excerptlen_one'
wp option delete 'tzpost_excerptlen'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tzpostsmethod%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tzpost%'"
wp option delete 'tzpostsmethod1'
wp option delete 'tzpostsmethod2'
wp option delete 'tzpostsmethod3'

