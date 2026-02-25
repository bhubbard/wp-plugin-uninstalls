#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfdb7_view_install_date'
wp option delete 'cfdb7_view_ignore_notice'

# Delete Transients
wp transient delete 'cfdb7_add_ons_feed'

