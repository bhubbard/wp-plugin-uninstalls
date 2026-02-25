#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmso_wikimint_maint_settings'
wp option delete 'wmso_wikimint_optimize_settings'
wp option delete 'wmso_wikimint_security_settings'

