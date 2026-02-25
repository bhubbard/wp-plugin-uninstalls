#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elb_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cache' OR option_name LIKE '_site_transient_%_cache'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elb_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elb_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elb_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elb_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elb_liveblog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elb_liveblog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elb_liveblog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elb_liveblog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elb_is_liveblog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elb_is_liveblog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elb_is_liveblog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elb_is_liveblog'"
