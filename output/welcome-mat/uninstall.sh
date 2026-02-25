#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_uninstall'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_data'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_structure' OR option_name LIKE '_site_transient_%_structure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%debug_cleanup' OR option_name LIKE '_site_transient_%debug_cleanup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%convertkit_forms' OR option_name LIKE '_site_transient_%convertkit_forms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%drip_account' OR option_name LIKE '_site_transient_%drip_account'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%license_lastcheck' OR option_name LIKE '_site_transient_%license_lastcheck'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%aweber_lists' OR option_name LIKE '_site_transient_%aweber_lists'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cm_clients' OR option_name LIKE '_site_transient_%cm_clients'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cm_lists' OR option_name LIKE '_site_transient_%cm_lists'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mailchimp_lists' OR option_name LIKE '_site_transient_%mailchimp_lists'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maxinbound_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maxinbound_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maxinbound_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maxinbound_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maxinbound_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maxinbound_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maxinbound_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maxinbound_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maxinbound_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maxinbound_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maxinbound_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maxinbound_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_archive_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_archive_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_archive_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_archive_meta_status'"
