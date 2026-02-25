#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cat_temp_post'
wp option delete 'cat_temp_data'
wp option delete 'cat_arch_data'

