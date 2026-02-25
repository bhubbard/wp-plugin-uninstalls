#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'code9_security_anti_brute_force'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%[]capcha1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%[]capcha2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%[]attemp'"
wp option delete 'code9_security_key'
wp option delete 'code9_security_iv'
wp option delete 'code9_security_2_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'code9_security_auth_%'"
wp option delete 'code9_security_2_step_blockingtime'

