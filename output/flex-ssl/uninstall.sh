#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flex_ssl_enabled'
wp option delete 'flex_ssl_force_https'
wp option delete 'flex_ssl_update_urls'
wp option delete 'flex_ssl_mixed_content_fixer'
wp option delete 'flex_ssl_hsts'
wp option delete 'flex_ssl_security_headers'
wp option delete 'flex_ssl_ssl_status'
wp option delete 'flex_ssl_redirect_type'
wp option delete 'flex_ssl_flex_ssl_woo_safe_mode'
wp option delete 'flex_ssl_logs'

