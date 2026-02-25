#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_versioning_settings'
wp option delete 'theme_versioning_adapters'
wp option delete 'theme_versioning_selected_adapter_class'
wp option delete 'theme_versioning_ui_mode'

