#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'really_rich_results_global'
wp option delete 'really_rich_results_org_name'
wp option delete 'really_rich_results_org_url'
wp option delete 'really_rich_results_org_duns'
wp option delete 'really_rich_results_org_address'
wp option delete 'really_rich_results_org_same_as'
wp option delete 'really_rich_results_org_legal_name'
wp option delete 'really_rich_results_org_logo'
wp option delete 'really_rich_results_org_country'
wp option delete 'really_rich_results_org_locality'
wp option delete 'really_rich_results_org_region'
wp option delete 'really_rich_results_org_po_box'
wp option delete 'really_rich_results_org_postal_code'
wp option delete 'really_rich_results_org_street'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'really_rich_results_post_type_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'really_rich_results_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'really_rich_results_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'really_rich_results_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'really_rich_results_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'really_rich_results_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'really_rich_results_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'really_rich_results_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'really_rich_results_product'"
