#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'imue_notification'
wp transient delete 'meta_keys'

