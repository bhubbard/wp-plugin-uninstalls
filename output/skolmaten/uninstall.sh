#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skolmaten_texten'
wp option delete 'skolmaten_adresses'

# Delete Transients
wp transient delete 'snillrik_skolmaten_data'

