#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'vhp_varnish_url'
wp option delete 'vhp_varnish_ip'
wp option delete 'vhp_varnish_max_posts_before_all'

