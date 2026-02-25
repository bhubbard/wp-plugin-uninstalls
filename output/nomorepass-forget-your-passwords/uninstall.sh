#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nomorepass-show-form'
wp option delete 'nomorepass-show-resetpass'
wp option delete 'nomorepass-auto-qr'
wp option delete 'nomorepass-auto-login'
wp option delete 'nomorepass-login-only'
wp option delete 'nomorepass-custom-logo'
wp option delete 'nomorepass-custom-msg'

