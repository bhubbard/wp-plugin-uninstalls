#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'term2link_times'
wp option delete 'term2link_taxonomies'

# Delete Transients
wp transient delete 'terms_to_links'

