#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcfwp_widget_url'
wp option delete 'lcfwp_third_party_url'
wp option delete 'lcfwp_status'
wp option delete 'lcfwp_username'
wp option delete 'lcfwp_password'

# Delete Transients
wp transient delete 'lcfwp_admin_notice'

