#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_s_theme_options'

# Delete Transients
wp transient delete 'all_the_cool_cats'

