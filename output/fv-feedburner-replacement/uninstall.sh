#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_feedburner_replacement'
wp option delete 'fv_feedburner_replacement_deferred_notices'
wp option delete 'fv_feedburner_replacement_deferred_errors'
wp option delete 'fv_feedburner_replacement_ad_disable'

