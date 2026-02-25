#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rakuten_applicationId'
wp option delete 'rakuten_application_secret'
wp option delete 'rakuten_affiliateId'
wp option delete 'rakuten_pageCount_max'

