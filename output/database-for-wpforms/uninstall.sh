#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPFormsDB_view_install_date'
wp option delete 'wpformsdb_view_ignore_notice'

# Delete Transients
wp transient delete 'wpformsdb_add_ons_feed'

