#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable-google-map'
wp option delete 'enable-slick-slider'
wp option delete 'enable-fontawesome'
wp option delete 'suppress_filters'

# Delete Transients
wp transient delete 'foundation_categories'

