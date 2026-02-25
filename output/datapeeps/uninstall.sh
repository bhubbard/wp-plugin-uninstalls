#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'datapeeps_field_phone'
wp option delete 'datapeeps_field_cvr'
wp option delete 'datapeeps_field_pnum'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"
wp option delete 'datapeeps_api_username'
wp option delete 'datapeeps_api_password'
wp option delete 'datapeeps_used_phone_count'
wp option delete 'datapeeps_found_phone_count'
wp option delete 'datapeeps_used_cvr_count'
wp option delete 'datapeeps_found_cvr_count'
wp option delete 'datapeeps_used_pnum_count'
wp option delete 'datapeeps_found_pnum_count'

