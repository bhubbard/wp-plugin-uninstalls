#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swal_cf7_title_success'
wp option delete 'swal_cf7_duration_success'
wp option delete 'swal_cf7_title_error'
wp option delete 'swal_cf7_duration_error'

