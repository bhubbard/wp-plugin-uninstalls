#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'awesplash_custom_css'
wp transient delete 'awesplash_custom_font_url'

