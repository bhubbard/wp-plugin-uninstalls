#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'shared_vision_lists'
wp transient delete 'shared_vision_is_valid_license'

