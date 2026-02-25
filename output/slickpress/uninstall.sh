#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_elementor_advance_options'
wp option delete 'wpsp_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'enable_%'"
wp option delete 'wpsp_license_status'

# Delete Transients
wp transient delete 'wpsp_qstore_ext_list'

