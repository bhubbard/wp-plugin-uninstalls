#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lottiefiles_activation_redirect'
wp option delete 'lottie_config_admin'
wp option delete 'lottiefiles_options'

