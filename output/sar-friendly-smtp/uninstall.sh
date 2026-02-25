#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sarfsmtp_username'
wp option delete 'sarfsmtp_password'
wp option delete 'sarfsmtp_smtp_server'
wp option delete 'sarfsmtp_port'
wp option delete 'sarfsmtp_encryption'
wp option delete 'sarfsmtp_from_address'
wp option delete 'sarfsmtp_from_name'
wp option delete 'sarfsmtp_debug_mode'
wp option delete 'sarfsmtp_allow_invalid_ssl'
wp option delete 'sarfsmtp_version'
wp option delete 'sarfsmtp_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sarfsmtp_%'"

