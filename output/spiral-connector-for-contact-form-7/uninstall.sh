#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scfcf7_beta'
wp option delete 'scfcf7_step'
wp option delete 'scfcf7_accountid'
wp option delete 'scfcf7_apikey'
wp option delete 'scfcf7_appId'
wp option delete 'scfcf7_ipblock'

# Delete Transients
wp transient delete 'scfcf7_failed_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_localpart' OR option_name LIKE '_site_transient_%_localpart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_domainid' OR option_name LIKE '_site_transient_%_domainid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scfcf7_error_%' OR option_name LIKE '_site_transient_scfcf7_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scfcf7_success_%' OR option_name LIKE '_site_transient_scfcf7_success_%'"
wp transient delete 'scfcf7_btn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_dbid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_dbid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_dbid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_dbid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_domainid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_domainid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_domainid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_domainid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_localpart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_localpart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_localpart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_localpart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_under'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_under'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_under'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_under'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfcf7_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfcf7_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfcf7_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfcf7_mapping'"
