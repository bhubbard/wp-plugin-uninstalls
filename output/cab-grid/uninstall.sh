#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cabGrid_Prices'
wp option delete 'cabGrid_Places'
wp option delete 'cabGrid_Options'

