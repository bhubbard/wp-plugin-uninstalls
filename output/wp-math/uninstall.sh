#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_math_size'
wp option delete 'wp_math_mail'
wp option delete 'wp_math_only_mail'
wp option delete 'wp_math_round'
wp option delete 'wp_math_static'

