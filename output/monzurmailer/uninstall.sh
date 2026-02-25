#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'monzurmailer_email_templates'
wp option delete 'monzurmailer_email_logs'
wp option delete 'monzurmailer_from_name'
wp option delete 'monzurmailer_from_email'
wp option delete 'monzurmailer_footer_note'
wp option delete 'monzurmailer_smtp_enable'
wp option delete 'monzurmailer_smtp_host'
wp option delete 'monzurmailer_smtp_port'
wp option delete 'monzurmailer_smtp_username'
wp option delete 'monzurmailer_smtp_password'
wp option delete 'monzurmailer_smtp_encryption'

