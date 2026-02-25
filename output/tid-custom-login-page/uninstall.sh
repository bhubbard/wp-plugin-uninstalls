#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tidlogin-primary-color'
wp option delete 'tidlogin-seconday-color'
wp option delete 'tidlogin-logo-image-url'
wp option delete 'tidlogin-custom-bg-image'
wp option delete 'tidlogin-custom-bg-britness'
wp option delete 'tidlogin_plugin_do_activation_redirect'

