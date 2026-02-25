#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_cmu_button_text'
wp option delete 'wp_cmu_button_text_copied'
wp option delete 'wp_cmu_button_color'
wp option delete 'wp_cmu_button_text_color'
wp option delete 'wp_cmu_link_text'
wp option delete 'wp_cmu_link_text_copied'
wp option delete 'wp_cmu_link_text_color'

