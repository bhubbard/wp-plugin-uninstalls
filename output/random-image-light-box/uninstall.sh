#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'random-image-light-box'

# Delete Transients
wp transient delete '_rilb_activation_redirect'

