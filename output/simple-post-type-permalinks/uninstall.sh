#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sptp_queue_flush_rewrite_rules'
wp option delete 'sptp_options'

