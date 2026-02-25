#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ev_protected_pages'
wp option delete 'evidence_script'
wp option delete 'ev_allowed_devices'
wp option delete 'ev_activation_redirect'

