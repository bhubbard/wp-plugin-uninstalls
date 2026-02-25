#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mabs'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mabs_activeblog_%' OR option_name LIKE '_site_transient_mabs_activeblog_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mabs_bloglist_%' OR option_name LIKE '_site_transient_mabs_bloglist_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mabs_is_below_min_%' OR option_name LIKE '_site_transient_mabs_is_below_min_%'"
wp transient delete 'mabs_admin_urls'
wp transient delete 'mabs_bloglist_network'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mabs_site_count_%' OR option_name LIKE '_site_transient_mabs_site_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mabs_user_blogs_%' OR option_name LIKE '_site_transient_mabs_user_blogs_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_domain'"
