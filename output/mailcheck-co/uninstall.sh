#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailcheckco_trust_rate'
wp option delete 'mailcheckco_enable_core'
wp option delete 'mailcheckco_enable_acf'
wp option delete 'mailcheckco_enable_cf7'
wp option delete 'mailcheckco_enable_woo'
wp option delete 'mailcheckco_enable_elementor'
wp option delete 'mailcheckco_enable_mailpoet'
wp option delete 'mailcheckco_hash'
wp option delete 'mailcheckco_message'
wp option delete 'mailcheckco_api_error'

