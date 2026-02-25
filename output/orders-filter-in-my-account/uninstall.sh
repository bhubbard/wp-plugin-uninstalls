#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wos-setting'
wp option delete 'my_plugin_do_activation_redirect'

