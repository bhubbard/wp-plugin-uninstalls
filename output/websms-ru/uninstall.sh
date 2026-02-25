#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websms-login'
wp option delete 'websms-password'
wp option delete 'websms-phone1'
wp option delete 'websms-phone2'
wp option delete 'websms-phone3'
wp option delete 'websms-phone4'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'websms-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'websms-phone%'"

