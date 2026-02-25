#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'simply_change_author_url_changed'
wp transient delete 'add_simply_change_author_url_rules'

