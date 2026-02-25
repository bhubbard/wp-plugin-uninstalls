#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brr_default_slug'
wp option delete 'brr_default_category'
wp option delete 'brr_default_posttype'
wp option delete 'brr_default_timeout'
wp option delete 'brr_transient_id'
wp option delete 'brr_query_posttype_pattern'
wp option delete 'brr_query_posttype_category_pattern'
wp option delete 'brr_query_qtranslate_pattern'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_max' OR option_name LIKE '_site_transient_%_max'"

