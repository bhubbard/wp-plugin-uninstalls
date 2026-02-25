#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'googleauthenticator_two_screen_signin'
wp option delete 'googleauthenticator_mandatory_mfa_roles'
wp option delete 'googleauthenticator_network_only'

