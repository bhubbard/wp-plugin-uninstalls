#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbq-block-count'
wp option delete 'bbq_options_free'
wp option delete 'bbq-firewall-dismiss-notice'

