#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'dirtysuds_howdy'
wp transient delete 'dirtysuds_howdy_rate'

