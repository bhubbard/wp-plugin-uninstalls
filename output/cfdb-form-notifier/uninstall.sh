#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfdb_form_notifier_api_key'
wp option delete 'cfdb_form_notifier_dev_mode'
wp option delete 'cfdb_form_notifier_version'
wp option delete 'cfdb_form_notifier_menu_roles'

