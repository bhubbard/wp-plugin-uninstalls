#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notice-interceptor_rules'
wp option delete 'notice-interceptor_autohide'
wp option delete 'notice-interceptor_rules_custom'
wp option delete 'notice-interceptor_option_adminonly'
wp option delete 'notice-interceptor_option_clearing'

