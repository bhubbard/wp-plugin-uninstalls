#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'parasol_disabled'
wp transient delete 'parasol_whitelist_domains'

