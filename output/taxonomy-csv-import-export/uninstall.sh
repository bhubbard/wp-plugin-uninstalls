#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taxocsie_version'
wp option delete 'taxocsie_installed'

# Delete Transients
wp transient delete 'taxoscie_csv_data'

