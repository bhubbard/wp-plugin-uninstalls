#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_stickit_class_name'
wp option delete 'wp_stickit_top'
wp option delete 'wp_stickit_zindex'
wp option delete 'wp_stickit_screen_min_width'
wp option delete 'wp_stickit_screen_max_width'

