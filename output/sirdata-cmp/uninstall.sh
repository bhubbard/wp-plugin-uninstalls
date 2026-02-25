#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'STCMP_custom_consent_partner_id'
wp option delete 'STCMP_custom_consent_config_id'
wp option delete 'STCMP_custom_consent_email'
wp option delete 'STCMP_custom_consent_domain'
wp option delete 'STCMP_custom_consent_url'
wp option delete 'STCMP_custom_consent_accept_cgv'
wp option delete 'STCMP_error_api'

