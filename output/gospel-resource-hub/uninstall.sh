#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gospelrh'

# Delete Transients
wp transient delete 'grh_widget_filters_langs'

