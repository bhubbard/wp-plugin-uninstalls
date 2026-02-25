#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email_verify_check_mx'
wp option delete 'email_verify_check_smtp'
wp option delete 'email_verify_check_error'
wp option delete 'email_verify_dep'
wp option delete 'email_verify_dep_error'
wp option delete 'email_verify_emails'
wp option delete 'email_verify_emails_error'
wp option delete 'email_verify_domains'
wp option delete 'email_verify_domains_error'
wp option delete 'email_verify_safelist'
wp option delete 'email_verify_safelist_emails'

