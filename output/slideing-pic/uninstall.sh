#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_url'
wp option delete 'smart_btime'
wp option delete 'smart_etime'
wp option delete 'smart_h'
wp option delete 'smart_d'
wp option delete 'smart_u'

