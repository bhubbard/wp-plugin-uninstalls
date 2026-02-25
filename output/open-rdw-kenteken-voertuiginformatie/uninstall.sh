#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'puc_license_rdw'
wp option delete 'open-rdw-notice-dismissed'
wp option delete 'tsd_rdw_license_status'
wp option delete 'open_rdw_formatters'
wp option delete 'status_puc_license_rdw'
wp option delete 'puc_date_rdw'
wp option delete 'tussendoor_token'
wp option delete 'rdw_tsd_license'
wp option delete 'tsd_rdw_tsd_rdw_license_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_info' OR option_name LIKE '_site_transient_%_license_info'"

