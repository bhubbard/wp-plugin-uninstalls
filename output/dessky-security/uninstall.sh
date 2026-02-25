#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'version'
wp option delete 'dessky_security_admin_footer_text_rated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dessky_security_%'"

