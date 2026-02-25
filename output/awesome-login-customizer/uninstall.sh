#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alcwp-custom-bg-image'
wp option delete 'alcwp-logo-image-url'
wp option delete 'login-button-gradient'
wp option delete 'alcwp_plugin_do_activation_redirect'

