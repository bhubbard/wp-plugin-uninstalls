#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simterm-command-prepend'
wp option delete 'simterm-type-prepend'
wp option delete 'simterm-default-delay'
wp option delete 'simterm-last-delay-time'
wp option delete 'simterm-default-theme'
wp option delete 'simterm-output-delay-time'
wp option delete 'simterm-typing-speed'
wp option delete 'simterm-transform-chars'
wp option delete 'simterm-window-title'
wp option delete 'simterm-window-statusbar'
wp option delete 'simterm-default-animated'

