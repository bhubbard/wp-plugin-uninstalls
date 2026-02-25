#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vikmailsmtp_host'
wp option delete 'vikmailsmtp_skipwizard'
wp option delete 'vikmailsmtp_port'
wp option delete 'vikmailsmtp_security'
wp option delete 'vikmailsmtp_auth'
wp option delete 'vikmailsmtp_sender'
wp option delete 'vikmailsmtp_user'
wp option delete 'vikmailsmtp_pass'
wp option delete 'vikmailsmtp_logging'
wp option delete 'vikmailsmtp_logs'

