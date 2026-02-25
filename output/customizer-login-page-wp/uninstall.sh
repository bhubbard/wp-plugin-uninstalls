#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clpwp-primary-color'
wp option delete 'clpwp-sec-color'
wp option delete 'clpwp-logo-image-url'
wp option delete 'clpwp-custom-bg-image'
wp option delete 'clpwp-custom-bg-brightness'
wp option delete 'clpwp_plugin_do_activation_redirect'

