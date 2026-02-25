#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_cc_attack_second'
wp option delete 'no_cc_attack_time'
wp option delete 'no_cc_attack_redirect_url'

