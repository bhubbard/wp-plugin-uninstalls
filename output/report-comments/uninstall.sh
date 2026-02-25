#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rc_db_version'
wp option delete 'rc_linktext'
wp option delete 'rc_beforelink'
wp option delete 'rc_afterlink'
wp option delete 'rc_cookie_days'
wp option delete 'rc_threshold'
wp option delete 'rc_textarea_msg'
wp option delete 'rc_allow_reporter_comment'
wp option delete 'rc_success'
wp option delete 'rc_already'
wp option delete 'rc_failure'
wp option delete 'rc_enable_email'
wp option delete 'rc_email'
wp option delete 'rc_email_subject'
wp option delete 'rc_email_msg'
wp option delete 'rc_publickey'
wp option delete 'rc_privatekey'
wp option delete 'rc_valid_error'
wp option delete 'rc_error'

