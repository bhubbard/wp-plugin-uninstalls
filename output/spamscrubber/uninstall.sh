#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spamscrubber_exclude_ids'
wp option delete 'spamscrubber_honeypot_enabled'
wp option delete 'spamscrubber_honeypot_field'

