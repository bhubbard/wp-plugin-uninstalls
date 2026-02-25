#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'PLAYCZ_topRadios_widget'
wp transient delete 'PLAYCZ_topRadios_widget_bck'

