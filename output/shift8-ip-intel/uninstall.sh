#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_ipintel_encryptionkey'
wp option delete 'shift8_ipintel_action'
wp option delete 'shift8_ipintel_action301'
wp option delete 'shift8_ipintel_email'
wp option delete 'shift8_ipintel_timeout'
wp option delete 'shift8_ipintel_actionthreshold'
wp option delete 'shift8_ipintel_subdomain'
wp option delete 'shift8_ipintel_safemode'
wp option delete 'shift_ipintel_action'
wp option delete 'shift8_ipintel_enabled'

