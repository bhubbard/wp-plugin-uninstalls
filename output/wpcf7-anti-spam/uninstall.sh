#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7_antispam_pass'
wp option delete 'wpcf7_antispam_hash'
wp option delete 'wpcf7_antispam_collector'
wp option delete 'wpcf7_antispam_mail_smtp_host'
wp option delete 'wpcf7_antispam_mail_smtp_port'
wp option delete 'wpcf7_antispam_mail_smtp_login'
wp option delete 'wpcf7_antispam_mail_smtp_pass'
wp option delete 'wpcf7_antispam_mail_sender'
wp option delete 'wpcf7_antispam_mail_recipient'
wp option delete 'wpcf7_antispam_mail_cc'

