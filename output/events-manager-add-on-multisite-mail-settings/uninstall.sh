#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_rsvp_mail_send_method'
wp option delete 'dbem_smtp_html'
wp option delete 'dbem_smtp_html_br'
wp option delete 'dbem_rsvp_mail_SMTPAuth'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%host'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%port'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%pass'"

