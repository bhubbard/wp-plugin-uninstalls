#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%invalid_email_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%duplicate_email_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%successfully_added'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%error_added'"
wp option delete 'WPSS_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name'"
