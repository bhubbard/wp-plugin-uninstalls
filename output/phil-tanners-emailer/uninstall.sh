#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppt_emailer_version'
wp option delete 'wppt_emailer_smtpdebug'
wp option delete 'wppt_emailer_smtp_host'
wp option delete 'wppt_emailer_smtp_auth'
wp option delete 'wppt_emailer_port'
wp option delete 'wppt_emailer_username'
wp option delete 'wppt_emailer_password'
wp option delete 'wppt_emailer_smtpsecure'

