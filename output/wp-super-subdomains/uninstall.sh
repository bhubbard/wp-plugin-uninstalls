#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subdomain_function'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'rewrite_rules'

