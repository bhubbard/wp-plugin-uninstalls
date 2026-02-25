#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bedp_disable_all_posts'
wp option delete 'bedp_disable_all_pages'
wp option delete 'bedp_disable_specific_pages'
wp option delete 'bedp_disable_all'

