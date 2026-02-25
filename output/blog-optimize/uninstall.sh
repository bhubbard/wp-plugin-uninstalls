#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blog_optimize'
wp option delete 'site_name'
wp option delete 'blog_optimize_wp_head'
wp option delete 'blog_optimize_wp_footer'
wp option delete 'blog_optimize_smtp'
wp option delete 'blog_optimize_data'

