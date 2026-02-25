#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secuplug_settings'
wp option delete 'securefusion_settings'
wp option delete 'bad_bots_list'

# Delete Transients
wp transient delete 'securefusion_ssl_cert_data'

