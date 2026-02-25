#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'domain_for_sale_version'
wp option delete 'domain_for_sale_first_version'
wp option delete 'domain_for_sale_activation_date'
wp option delete 'domain_for_sale_db_version'
wp option delete 'dfs-opt'
wp option delete 'domain_for_sale_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dfs_template_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dfs_template_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dfs_template_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dfs_template_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dfs_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dfs_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dfs_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dfs_layouts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfs_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfs_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfs_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfs_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'domain_for_sale_view_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'domain_for_sale_view_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'domain_for_sale_view_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'domain_for_sale_view_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
