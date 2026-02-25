#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dx_delete_attached_media_options'

# Delete Transients
wp transient delete 'dx_dam_activation'

