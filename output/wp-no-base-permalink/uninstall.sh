#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_no_base_permalink_flush'
wp option delete 'wp_no_base_permalink'
wp option delete 'wp_no_base_permalink_version'

