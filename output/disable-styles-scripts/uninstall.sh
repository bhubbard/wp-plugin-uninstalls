#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'e6n_disable_plugin_css'
wp option delete 'e6n_disable_plugin_js'
wp option delete 'e6n_disable_theme_css'
wp option delete 'e6n_disable_theme_js'
wp option delete 'e6n_conditional_logic'

