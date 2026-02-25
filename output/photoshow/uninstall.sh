#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photoshow_google_active'
wp option delete 'photoshow_google_cx'
wp option delete 'photoshow_google_api_key'
wp option delete 'photoshow_flickr_api_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

