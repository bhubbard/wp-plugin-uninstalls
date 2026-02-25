#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_email_recipients_section_enabled'
wp option delete 'alg_wc_email_recipients'
wp option delete 'alg_wc_email_recipients_forwarding_section_enabled'
wp option delete 'alg_wc_email_recipients_cc_email'
wp option delete 'alg_wc_email_recipients_bcc_email'
wp option delete 'alg_wc_email_recipients_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

