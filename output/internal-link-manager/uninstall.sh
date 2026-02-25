#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-acf'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-keywords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-maxuse'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-case'"
wp option delete 'Internal_Link_Manager-maxuse'
wp option delete 'Internal_Link_Manager-case'
wp option delete 'Internal_Link_Manager-keywords'
wp option delete 'Internal_Link_Manager-metabox'

