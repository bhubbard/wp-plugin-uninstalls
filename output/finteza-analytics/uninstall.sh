#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'finteza_settings'
wp option delete 'finteza_register'

# Delete Transients
wp transient delete 'vpt_flush'

