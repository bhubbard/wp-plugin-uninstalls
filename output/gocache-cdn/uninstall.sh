#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gocache_option-auto_clear_sitemap_url'
wp option delete 'gocache_option-auto_clear_amp_url'
wp option delete 'gocache_option-amp'
wp option delete 'gocache_option-external_configs'
wp option delete 'gocache_option-status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gocache_option-%'"

