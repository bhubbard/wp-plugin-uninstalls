#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'engagebay_domain'
wp option delete 'engagebay_rest_api'
wp option delete 'engagebay_email'
wp option delete 'engagebay_password'

