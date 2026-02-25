#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwlp-primary-color'
wp option delete 'cwlp-secondary-color'
wp option delete 'cwlp-login-logo'
wp option delete 'login-background-image'
wp option delete 'cwlp-logo-brightness'
wp option delete 'cwlp_plugin_do_activation_redirect'

