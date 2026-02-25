#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_nomod_settings'
wp option delete 'secret_key'
wp option delete 'nomod_plugin_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nomod_refund_blocked_%' OR option_name LIKE '_site_transient_nomod_refund_blocked_%'"

