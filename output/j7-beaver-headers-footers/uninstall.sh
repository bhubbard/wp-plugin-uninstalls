#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbp_hft_license_key'
wp option delete 'bbp_hft_license_status'
wp option delete 'bbp_hft_license_status_info'
wp option delete 'bbp_hft_license_authsite'
wp option delete '_fl_builder_user_templates_admin'

