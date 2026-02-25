#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkaf_enable_for_billing'
wp option delete 'hkaf_enable_for_shipping'
wp option delete 'hkaf_google_place_api_key'
wp option delete 'hkaf_enable_for_hkgov'
wp option delete 'hkaf_enable_for_google'

