#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bruteguard_privacy_opt_in'
wp option delete 'bruteguard_saved_settings'
wp option delete 'bruteguard_deactivated'
wp option delete 'bruteguard_user'
wp option delete 'bruteguard_version'
wp option delete 'bruteguard_do_activation_redirect'
wp option delete 'bruteguard_apikey'
wp option delete 'bruteguard_whitelist'
wp option delete 'bruteguard_apikey_status'
wp option delete 'trusted_ip_header'
wp option delete 'bruteguard_error'

