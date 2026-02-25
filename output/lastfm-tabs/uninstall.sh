#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lastfm_tabs_options'

# Delete Transients
wp transient delete 'lastfm_tabs_template_cache'
wp transient delete 'lastfm_tabs_shortcode_cache'

