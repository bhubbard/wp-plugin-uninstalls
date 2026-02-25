#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'custom_post_type_cleanup_unused_post_types'

