#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plebeian_market_auth_key'
wp option delete 'plebeian_market_url_connect'
wp option delete 'plebeian_market_cutomization_css'
wp option delete 'plebeian_market_cutomization_js'

