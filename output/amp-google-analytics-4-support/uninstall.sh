#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ampanalyticssupport'
wp option delete 'ampanalyticssupport_pageview'
wp option delete 'ampanalyticssupport_consent'
wp option delete 'ampanalyticssupport_webvitals'
wp option delete 'ampanalyticssupport_performance'

