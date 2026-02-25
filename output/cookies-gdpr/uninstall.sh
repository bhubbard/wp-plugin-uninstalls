#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookies_gdpr_content'
wp option delete 'cookies_gdpr_consent'

