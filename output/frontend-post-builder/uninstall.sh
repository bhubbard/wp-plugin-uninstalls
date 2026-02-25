#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpb_reg_form_fields'
wp option delete 'fronpobu_post_status'
wp option delete 'fronpobu_post_type'

# Delete Transients
wp transient delete 'fronpobu_plugin_version'

