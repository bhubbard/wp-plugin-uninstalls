#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-client-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-secret-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-scopes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-own-app'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-authorised'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-crm-active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-setting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-onboarding-data-sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-onboarding-data-skipped'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-token-data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-user-info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-crm-connected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-synced-forms-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cf7-settings-response'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cf7_pro_version_incompatible' OR option_name LIKE '_site_transient_%_cf7_pro_version_incompatible'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_objects_data' OR option_name LIKE '_site_transient_%_objects_data'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-primary-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-primary-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-primary-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-primary-field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-mapping-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-mapping-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-mapping-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-mapping-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-enable-filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-enable-filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-enable-filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-enable-filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-condtion-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-condtion-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-condtion-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-condtion-field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-crm-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-crm-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-crm-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-crm-fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
