#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kpctb_embedded_code'
wp option delete 'kpctb_security_key'
wp option delete 'kpctb_channel_id'

