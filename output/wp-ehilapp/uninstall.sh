#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ehilapp_options_cat'
wp option delete 'wp_ehilapp_options_tag'
wp option delete 'wp_ehilapp_options_cat_inv'
wp option delete 'wp_ehilapp_options_tag_inv'
wp option delete 'wp_ehilapp_options'

