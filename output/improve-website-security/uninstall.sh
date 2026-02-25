#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'change_admin_url_improve_website_security_itc'
wp option delete 'itc_plugin_deactivation_secret_improve_website_security_itc'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_itc_improve_website_security%' OR option_name LIKE '_site_transient_itc_improve_website_security%'"

