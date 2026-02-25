#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avifautoconvstatus'
wp option delete 'avifoperationmode'
wp option delete 'avifimagequality'
wp option delete 'avifcompressionspeed'
wp option delete 'avifconversionengine'
wp option delete 'avifontheflyavif'
wp option delete 'avifenablelogging'
wp option delete 'avifapikey'
wp option delete 'aviffallbackmode'
wp option delete 'aviflazyload'
wp option delete 'aviflazyloadrootmargin'
wp option delete 'aviflazyloadjsthreshold'
wp option delete 'aviflazyloadbackground'
wp option delete 'avifbackgroundConv'
wp option delete 'avifbackgroundevents'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'avife_auto_convert'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avifexpressconverted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avifexpressconverted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avifexpressconverted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avifexpressconverted'"
