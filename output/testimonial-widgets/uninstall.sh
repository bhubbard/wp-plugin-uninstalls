#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpttst_custom_forms'
wp option delete 'wpttst_options'
wp option delete 'wp-testimonials-visited-get-reviews'
wp option delete 'wpttst_fields'

