#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpt_shortcode_options'
wp option delete 'dpt-admin-notice'

# Delete Transients
wp transient delete 'dpt_custom_fields_with_post_types'

