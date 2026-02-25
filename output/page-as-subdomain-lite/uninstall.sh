#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pages_subdomain'
wp option delete 'pagessubdomain_donottrack'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'rewrite_rules'

