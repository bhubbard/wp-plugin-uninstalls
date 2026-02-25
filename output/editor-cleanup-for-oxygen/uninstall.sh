#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'fdp-oxygen-notice-succ'
wp transient delete 'fdp-oxygen-notice-fail'

