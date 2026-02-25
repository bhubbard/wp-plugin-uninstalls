#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vbean_errormailer_useslack'
wp option delete 'vbean_slack_hooker_setupvalid'
wp option delete 'vbean_errormailer_fatals'
wp option delete 'vbean_errormailer_warnings'
wp option delete 'vbean_errormailer_notices'
wp option delete 'vbean_errormailer_parse'
wp option delete 'vbean_errormailer_db_version'
wp option delete 'vbean_errormailer_lasterror'
wp option delete 'vbean_errormailer_lasterrorcount'
wp option delete 'vbean_errormailer_lasterrortime'
wp option delete 'vbean_errormailer_lasterrorstart'
wp option delete 'vbean_errormailer_subject'
wp option delete 'vbean_errormailer_exemptions'
wp option delete 'vbean_errormailer_excludetypes'
wp option delete 'vbean_errormailer_recipients'
wp option delete 'vbean_errormailer_slackicon'
wp option delete 'vbean_errormailer_slackchannel'
wp option delete 'vbean_errormailer_slackfrom'

