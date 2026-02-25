#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_app'
wp option delete 'sp_plugin_do_activation_redirect'

