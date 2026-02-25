#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'marquee-image-crawler'

# Delete Transients
wp transient delete '_mic_activation_redirect'

