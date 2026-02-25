#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_memcached_support_version'
wp option delete 'wordpress_memcached_support_notice'

