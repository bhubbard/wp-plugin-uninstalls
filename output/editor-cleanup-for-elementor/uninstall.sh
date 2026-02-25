#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdp_elementor'

# Delete Transients
wp transient delete 'fdp-elementor-notice-succ'
wp transient delete 'fdp-elementor-notice-fail'

