#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dashplsb_%'"
wp option delete 'dashpls_branding'
wp option delete 'dashpl_branding'
wp option delete 'dashpls_customization'
wp option delete 'DASHPLS_branding'
wp option delete 'admin_email_lifespan'
wp option delete 'DASHPLS_login_customizer_flush_url'

