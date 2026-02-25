#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_ssl_use_ssl'
wp option delete 'admin_ssl_use_shared'
wp option delete 'admin_ssl_shared_url'
wp option delete 'admin_ssl_additional_urls'
wp option delete 'admin_ssl_secure_users_only'
wp option delete 'admin_ssl_config_parent'
wp option delete 'admin_ssl_https_key'
wp option delete 'admin_ssl_https_value'

