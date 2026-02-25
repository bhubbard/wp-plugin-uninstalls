#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_cc_version'
wp option delete 'wp_cc_license'
wp option delete 'wp_cc_auto_text'
wp option delete 'wp_cc_auto_image'
wp option delete 'wp_cc_auto_metadata'

