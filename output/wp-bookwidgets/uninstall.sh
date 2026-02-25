#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_lti_enabled'
wp option delete 'bw_lti_consumer_key'
wp option delete 'bw_lti_consumer_secret'

