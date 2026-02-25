#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jajadi_kerktijden_db_version'
wp option delete 'jajadikerktijdenkerkid'
wp option delete 'jajadikerktijdendefaulttext'
wp option delete 'jajadikerktijdendefaulbackground'
wp option delete 'jajadikerktijdencancelledregular'
wp option delete 'jajadikerktijdencancelledtype'
wp option delete 'jajadikerktijdengatheringtype'
wp option delete 'jajadikerktijdengatheringtyperegular'
wp option delete 'jajadikerktijdenlink'
wp option delete 'jajadikerktijdenlinkhover'
wp option delete 'jajadikerktijdendate'
wp option delete 'jajadikerktijdenlocation'
wp option delete 'jajadikerktijdenlocationdeviating'
wp option delete 'jajadikerktijdenpasttext'
wp option delete 'jajadikerktijdenpastdaytext'

# Clear Cron Jobs
wp cron event delete 'jajadi_kerktijden_daily_event'

