#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'connect_ez_plugin_options'
wp option delete 'connect_ez_plugin_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sip_form_token_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sip_secure_data_%' OR option_name LIKE '_site_transient_sip_secure_data_%'"

