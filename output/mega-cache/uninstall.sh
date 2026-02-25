#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extensions'"
wp option delete 'atec_allow_integrity_check'
wp option delete 'atec_WPB_settings'
wp option delete 'atec_WPDP_settings'
wp option delete 'atec_WPDV_settings'
wp option delete 'atec_WPLU_settings'
wp option delete 'atec_WPO_settings'
wp option delete 'atec_WPSM_mail_tested'
wp option delete 'atec_wpwp_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_bar'"
wp option delete 'atec_wpdp_latest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'atec_wpb_debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"
wp option delete 'atec_wpmc_debug'
wp option delete 'atec_WPMC_extensions'
wp option delete 'atec_WPMC_settings'
wp option delete 'atec_WPMC_prime'
wp option delete 'atec_WPCA_settings'

# Delete Transients
wp transient delete 'atec_license_code_MEGA'

# Clear Cron Jobs
wp cron event delete 'atec_wpmc_auto_prime'

