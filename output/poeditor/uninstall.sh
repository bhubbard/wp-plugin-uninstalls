#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poeditor_apikey'
wp option delete 'poeditor_projects'
wp option delete 'poeditor_files'
wp option delete 'poeditor_languages'
wp option delete 'poeditor_assingments'
wp option delete 'poeditor_flash_messages'
wp option delete 'Activated_Plugin'

