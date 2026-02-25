#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'client_portal_flush_rewrite_rules_flag'
wp option delete 'cp_activation_date_time'
wp option delete 'cp_notice_pb_dimiss'

