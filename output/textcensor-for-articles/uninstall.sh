#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TextCensorForArticles'

# Delete Transients
wp transient delete 'luffy_tcfa_status'

