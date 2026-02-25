#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'current_theme'
wp option delete 'smk_sidebar_generator_option'

# Delete Transients
wp transient delete 'smk_sidebar_generator_option_v2'

