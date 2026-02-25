#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppatr-links'
wp option delete 'wppatr-not-links'
wp option delete 'wppatr-page-selector'
wp option delete 'wppatr-remove-scroll-bar'
wp option delete 'wppatr-page'
wp option delete 'wppatr-overlay'
wp option delete 'wppatr-loader'
wp option delete 'wppatr-active-transitions'

