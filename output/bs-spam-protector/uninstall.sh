#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bs_spam_protector_secret_key'
wp option delete 'bs_spam_protector_expiration_interval'
wp option delete 'bs_spam_protector_log_checkbox'
wp option delete 'bs_spam_protector_time_check_severity'

