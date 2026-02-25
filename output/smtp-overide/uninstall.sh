#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smtp_override_cbezzy_default_test_email'
wp option delete 'smtp_override_bypass_ssl_verify_cbezzy'

