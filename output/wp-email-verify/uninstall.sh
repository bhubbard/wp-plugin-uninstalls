#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailchecker_server_status'
wp option delete 'emailchecker_server_msg'
wp option delete 'emailchecker_api_key'
wp option delete 'emailchecker_credit'
wp option delete 'emailchecker_usd_balance'
wp option delete 'emailchecker_rate'
wp option delete 'day_email_check_stat'
wp option delete 'all_email_checked'
wp option delete 'rem_emailchecker_credit'
wp option delete 'emailchecker_used_credits'
wp option delete 'emailchecker_blocked_domains_list'
wp option delete 'emailchecker_blocked_emails_list'
wp option delete 'emailchecker_allowed_domains_list'
wp option delete 'emailchecker_allowed_emails_list'

