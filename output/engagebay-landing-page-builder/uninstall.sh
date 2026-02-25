#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'engagebay_lp_builder_domain'
wp option delete 'engagebay_lp_builder_rest_api'
wp option delete 'engagebay_lp_builder_email'
wp option delete 'engagebay_lp_builder_password'

