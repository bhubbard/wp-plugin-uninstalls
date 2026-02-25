#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tantan_wordpress_s3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'as3cf_constant_%'"

