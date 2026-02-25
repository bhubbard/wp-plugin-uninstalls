#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-hatena-blog-url-option'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-hatena-blog-check-option'"

