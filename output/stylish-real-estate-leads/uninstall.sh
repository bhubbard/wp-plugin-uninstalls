#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srel_settings_page_options'
wp option delete 'srel_db_version'
wp option delete 'SREL_MORTGAGE_CALCULATOR_INSTALLED'
wp option delete 'SREL_MORTGAGE_CALCULATOR_VERSION'

