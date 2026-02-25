#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_caption'"
wp option delete 'wpjobster_paystack_enablesandbox'
wp option delete 'wpjobster_paystack_tsk'
wp option delete 'wpjobster_paystack_tpk'
wp option delete 'wpjobster_paystack_lsk'
wp option delete 'wpjobster_paystack_lpk'
wp option delete 'wpjobster_paystack_success_page'
wp option delete 'wpjobster_paystack_failure_page'
wp option delete 'wpjobster_paystack_id'

