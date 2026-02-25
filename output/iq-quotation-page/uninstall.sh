#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQcountrycode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQmapskey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQshowaboutreviews'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQassetstodisplay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_IQisdirectory'"
wp option delete 'IQquotationpage_template_IQmapskey'
wp option delete 'IQquotationpage_template_IQcountrycode'
wp option delete 'IQquotationpage_template_IQisdirectory'
wp option delete 'IQquotationpage_template_IQassetstodisplay'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iqpageproperties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iqpageproperties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iqpageproperties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iqpageproperties'"
