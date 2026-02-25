#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intelliassist_options'
wp option delete 'intms_cs'
wp option delete 'intelliassist_activation_redirect'
wp option delete 'intms_ck'
wp option delete 'woocommerce_email_from_address'

# Delete Transients
wp transient delete 'intelliassist_flush_rules'

