#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rate_limiting_enabled'
wp option delete 'rate_limiting_seconds'
wp option delete 'rate_limiting_limit'
wp option delete 'rate_limiting_proxy_support'

