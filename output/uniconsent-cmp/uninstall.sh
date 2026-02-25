#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unic_language'
wp option delete 'unic_enable_iab'
wp option delete 'unic_license'
wp option delete 'unic_type'
wp option delete 'unic_region'
wp option delete 'unic_company'
wp option delete 'unic_logo'
wp option delete 'unic_policy_url'
wp option delete 'unic_enable_gdpr'
wp option delete 'unic_enable_ccpa'
wp option delete 'unic_version'
wp option delete 'unic_enable_google'
wp option delete 'unic_enable_cookie'

