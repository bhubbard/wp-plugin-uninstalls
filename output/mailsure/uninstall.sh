#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailsure_do_activation_redirect'
wp option delete 'mailsure_latest_test_result'
wp option delete 'mailsure_initiated_on_demand_test'
wp option delete 'mailsure_new_data_flag'

