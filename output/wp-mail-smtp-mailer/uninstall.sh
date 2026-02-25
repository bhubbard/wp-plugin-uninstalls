#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPMSM_mail_data'
wp option delete 'wpmsm_mail_smtp_ignore_notice'
wp option delete 'wpmsm_mailer_install_date'
wp option delete 'WPMS_mail_flag'

