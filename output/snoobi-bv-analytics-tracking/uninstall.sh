#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snoobianalyticsplugin_type'
wp option delete 'snoobianalyticsplugin_partner_id'
wp option delete 'snoobianalyticsplugin_snoobi_id'
wp option delete 'snoobianalyticsplugin_anchors'
wp option delete 'snoobianalyticsplugin_cookies'
wp option delete 'snoobianalyticsplugin_location'

