#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'gravityforms-luminate_constituent_fields'
wp transient delete 'gravityforms-luminate_luminate_groups'

