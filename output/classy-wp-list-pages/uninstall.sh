#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c_wp_lp_attr'
wp option delete 'c_wp_lp_prefix'
wp option delete 'c_wp_lp_first_class'
wp option delete 'c_wp_lp_last_class'

