#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clwp_api_pass_test'
wp option delete 'clwp_api_username'
wp option delete 'clwp_api_password'

# Delete Transients
wp transient delete 'cl_msg_error'
wp transient delete 'cl_msg_success'

