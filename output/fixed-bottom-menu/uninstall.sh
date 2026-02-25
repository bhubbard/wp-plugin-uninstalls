#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fixedbottommenu_settings'
wp option delete 'fixedbottommenu_settings_col'
wp option delete 'fixedbottommenu_template'
wp option delete 'fixedbottommenu_add_on_icon_settings'
wp option delete 'fixedbottommenu_settings_old'

