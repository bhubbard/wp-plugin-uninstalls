#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tid-primary-color'
wp option delete 'tid-button-position'
wp option delete 'tid-rounded-corner'
wp option delete 'tid_plugin_do_activation_redirect'

