#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kk_uc_core_default_disable'
wp option delete 'kk_uc_plugins_default_disable'
wp option delete 'kk_uc_themes_default_disable'
wp option delete 'kk_uc_translations_default_disable'

