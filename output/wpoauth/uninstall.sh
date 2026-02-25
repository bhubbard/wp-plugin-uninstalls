#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secuforoauth_providers'
wp option delete 'secuforoauth_user_providers'
wp option delete 'secuforoauth_is_installed'
wp option delete 'secuforoauth_is_alone'
wp option delete 'secuforoauth_user_login'
wp option delete 'secuforoauth_login_token'

