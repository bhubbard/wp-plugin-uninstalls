#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subdomain_api_option'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'rewrite_rules'

