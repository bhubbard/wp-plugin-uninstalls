#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'raiaccept_applepay_endpoint_registered'
wp option delete 'raiaccept_applepay_endpoint_error'

