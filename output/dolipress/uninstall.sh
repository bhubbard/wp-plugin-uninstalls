#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgform'
wp option delete 'dpapikey'
wp option delete 'dgurl'
wp option delete 'usehttps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gffield%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dbfield%'"
wp option delete 'dpgf_errors'
wp option delete 'telegramid'

