#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'consent_for_ads_terms_accepted'
wp option delete 'consent_for_ads_enable_debug'
wp option delete 'consent_for_ads_version'

