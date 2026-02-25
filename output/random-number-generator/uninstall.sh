#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'random_number_generator_shortcode'
wp option delete 'random_number_generator_parent_menu'
wp option delete 'random_number_generator_from'
wp option delete 'random_number_generator_to'
wp option delete 'random_number_generator_format'

