#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-client-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-secret-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-scopes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-own-app'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-authorised'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-crm-active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-gf-setting'"
wp option delete 'onboarding-data-sent'
wp option delete 'onboarding-data-skipped'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-token-data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-user-info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-crm-connected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-gf-synced-forms-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-gf-settings-response'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_objects_data' OR option_name LIKE '_site_transient_%_objects_data'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-primary-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-primary-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-primary-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-primary-field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-mapping-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-mapping-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-mapping-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-mapping-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-enable-filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-enable-filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-enable-filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-enable-filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-condtion-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-condtion-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-condtion-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-condtion-field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-crm-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-crm-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-crm-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-crm-fields'"
