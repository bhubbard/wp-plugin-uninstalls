#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'fdp-avada-notice-succ'
wp transient delete 'fdp-avada-notice-fail'

