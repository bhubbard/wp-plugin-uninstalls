#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ure_users_without_role'
wp transient delete 'ure_caps_columns_quant'
wp transient delete 'ure_caps_readable'
wp transient delete 'ure_show_deprecated_caps'

