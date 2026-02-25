#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kr_mr_api_token'
wp option delete 'kr_mr_introduction_text'
wp option delete 'kr_mr_latest_membership_request'
wp option delete 'kr_mr_latest_expire_at'

