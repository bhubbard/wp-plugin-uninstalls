#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Blue_Triangle_Automated_CSP_Free_Directives'
wp option delete 'Blue_Triangle_Automated_CSP_Free_Directive_Options'
wp option delete 'Blue_Triangle_Automated_CSP_Free_Errors'
wp option delete 'Blue_Triangle_Automated_CSP_Free_Report_Mode'
wp option delete 'Blue_Triangle_Automated_CSP_Free_CSP'
wp option delete 'Blue_Triangle_Automated_CSP_Free_Version'

# Clear Cron Jobs
wp cron event delete 'Blue_Triangle_Automated_CSP_Free_Cron_Update'

