#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect_by_country_redirect_enabled'
wp option delete 'redirect_by_country_redirect_rules'
wp option delete 'redirect_by_country_cookie_days'

