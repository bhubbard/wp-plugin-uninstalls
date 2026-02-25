#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_random_blogdescription'
wp option delete 'wp_random_blogdescription_timing'
wp option delete 'wp_random_blogdescription_last'

