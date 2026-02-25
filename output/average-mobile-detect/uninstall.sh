#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avrgmobdtct_redirect'
wp option delete 'the_mobile_site_uri'
wp option delete 'non_mobile_site_uri'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avrgmobdtct_equiv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avrgmobdtct_equiv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avrgmobdtct_equiv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avrgmobdtct_equiv'"
