#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdac_translate'

# Delete Transients
wp transient delete 'sdac_translate_widget_output'

