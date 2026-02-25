#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-document'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-admin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-permissions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-advanced'"
wp option delete 'help-manager-permissions'
wp option delete 'wphm_default_document'
wp option delete 'help-manager-advanced'
wp option delete 'help-manager-admin'
wp option delete 'help-manager-document'
wp option delete 'help-manager-custom-css'

